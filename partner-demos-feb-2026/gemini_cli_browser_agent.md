# Demo: Gemini CLI Browser Agent (Computer Use)

This walkthrough demonstrates the **Experimental Browser Agent** subagent in Gemini CLI, which enables semantic and visual web browsing directly from the terminal. This feature was introduced in **[PR #19284](https://github.com/google-gemini/gemini-cli/pull/19284)**.

## Use Case
A developer needs to perform complex, multi-step visual tasks (like using the GCP Pricing Calculator) or extract data from dynamic JS-heavy sites without leaving the IDE.

## Steps

### 1. Install Chrome DevTools MCP Server
Install the MCP server globally. If you're behind a corporate proxy, use the public registry flag to avoid 403 errors.
```bash
npm install -g chrome-devtools-mcp --registry https://registry.npmjs.org
```

### 2. Configure Gemini CLI
Add the following to your `~/.gemini/settings.json`. You need both the **browser agent** enabled and the **MCP server** configured:
```json
{
  "agents": {
    "overrides": {
      "browser_agent": { "enabled": true }
    }
  },
  "mcpServers": {
    "chrome-devtools": {
      "command": "chrome-devtools-mcp"
    }
  }
}
```
Verify the connection:
```bash
gemini mcp list
# Should show: chrome-devtools: chrome-devtools-mcp (stdio) - Connected
```

### 3. Visual Task Execution (Computer Use)
Ask Gemini to perform a task that requires visual interaction — selecting dropdowns, filling fields, and reading dynamically rendered results.
```bash
gemini "Use the browser to go to https://cloud.google.com/products/calculator. Click 'Add to estimate', then select 'Compute Engine'. In the form, set Machine type to 'n2-standard-4', change the region dropdown to 'us-central1', set 'Number of instances' to 3, and then take a screenshot of the estimated cost summary panel on the right side."
```

### 4. Multi-Page Navigation & Research
Ask Gemini to navigate across multiple pages, following links and extracting information that requires understanding page context.
```bash
gemini "Use the browser to go to https://github.com/google-gemini/gemini-cli/releases, find the most recent release, click into it, and summarize the top 5 changes listed in the release notes."
```

## Things to remember or know
- **Architecture (Subagent Pattern)**: The CLI uses a **Master/Specialist** pattern. The main agent delegates complex web tasks to the `browser_agent` subagent, which maintains a stateful browser session via the Chrome DevTools MCP.
- **Context Compression**: By using a subagent, the "noisy" step-by-step browser data (screenshots, accessibility trees) stays within the subagent's internal loop, keeping your main session chat history clean and efficient.
- **Advanced Configuration**: You can customize the subagent in your `settings.json` under `agents.overrides.browser_agent.customConfig`:
    - `sessionMode`: `persistent` (default), `isolated` (temporary), or `existing` (attach to running Chrome).
    - `headless`: Set to `false` to see the browser window during execution.
- **Visual vs. Semantic**: The agent uses the **Accessibility Tree** for reliable element identification and a **Visual Model** (e.g., Gemini 2.5 Computer Use) for coordinate-based interactions.
- **Non-interactive Mode (CI/CD)**: For automated pipelines, use the `--yolo` flag to allow the agent to click and navigate without manual confirmation for every step.
