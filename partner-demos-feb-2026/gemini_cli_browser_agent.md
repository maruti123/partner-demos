# Demo: Gemini CLI Browser Agent (v0.31.0)

This walkthrough demonstrates the new **Experimental Browser Agent** in Gemini CLI, which allows you to interact with live web pages directly from your terminal.

## Use Case
A developer needs to extract the latest pricing information from a competitor's website or check the status of a cloud service without leaving their terminal.

## Steps

### 1. Update Gemini CLI
Ensure you are on the latest version (v0.31.0+).
```bash
gemini update
gemini --version
```

### 2. Enable the Browser Agent
The browser agent is an experimental feature that uses a headless browser to "see" and "interact" with web pages.

### 3. Multi-Step Navigation & Interaction
Ask Gemini to find specific information that requires clicking through multiple pages.
```bash
gemini "Open https://cloud.google.com/products, use the browser to scroll down and find the 'AI and Machine Learning' section, click on 'Vertex AI', then on the Vertex AI page click on 'Pricing' in the top navigation, and tell me the per-1,000,000-token price for Gemini 3.1 Pro input."
```

### 4. Form Filling & Dynamic UI Interaction (Computer Use)
Perform a task that requires typing into fields, selecting dropdowns, and reading dynamically rendered results. This forces the browser agent to use visual computer-use capabilities.
```bash
gemini "Use the browser to go to https://cloud.google.com/products/calculator. Click 'Add to estimate', then select 'Compute Engine'. In the form, set Machine type to 'n2-standard-4', change the region dropdown to 'us-central1', set 'Number of instances' to 3, and then take a screenshot of the estimated cost summary panel on the right side."
```

## Things to remember or know
- **Visual Agency**: The agent doesn't just "fetch" the HTML; it "renders" the page and interacts with elements like a human would.
- **JavaScript Support**: Ideal for single-page applications (SPAs) and sites that depend on dynamic content.
- **Developer Productivity**: Drastically reduces context switching between the IDE/Terminal and the Browser.
- **Agentic Workflows**: This can be integrated into larger shell scripts for automated market research or system health checks.
