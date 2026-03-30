# Google Cloud Partner Demos

This repository contains a collection of actionable demos for partners to showcase the latest Google Cloud Data & AI features to their clients.

## February 2026 Suite
The February release focuses on **BigQuery Global Queries**, **Direct Governance Policies**, and **Managed MCP** for agentic workflows.

### BigQuery Demos
- [BigQuery Global Queries](./partner-demos-feb-2026/bq_global_queries_demo.ipynb): Join datasets across multiple regions with zero data movement.
- [BigQuery Governance: Legacy Tags vs. Direct Policies](./partner-demos-feb-2026/bq_legacy_tags_vs_direct_policies.ipynb): A comparative study of traditional Policy Tags vs. the streamlined 2026 Direct Column Data Policy method.
- [BigQuery: Param Queries, Insights & Undelete](./partner-demos-feb-2026/bq_param_queries_insights_undelete_dataset.ipynb): Parameterized Queries, Dataset/Table Insights, and Dataset Undeletion.

### AI & Agentic Development Demos
- [ADK Mastery: Dynamic Skills](./partner-demos-feb-2026/adk_skills_mastery_demo.ipynb): On-demand instruction loading for complex agent workflows.
- [Managed MCP: BigQuery](./partner-demos-feb-2026/mcp_bigquery_demo.ipynb): High-performance data analysis using the BigQuery MCP server.
- [Gemini 3.1 Flash Image](./partner-demos-feb-2026/gemini_3_1_flash_image_demo.ipynb): High-quality image generation with state-of-the-art prompt adherence.
- [Gemini CLI Browser Agent](./partner-demos-feb-2026/gemini_cli_browser_agent.md): (Markdown Walkthrough) Interact with live web pages directly from the terminal.

---

## March 2026 Suite (Preview)
The March release showcases **BigQuery AI Functions**, **ADK A2A Interoperability**, **SecOps Automation**, and **Enterprise Data Discovery** across 7 demos.

### BigQuery & Data Intelligence

| Demo | GCP Features | ADK Features | Key Takeaway |
|------|-------------|--------------|--------------|
| [Conversational Analytics](./partner-demos-march-2026/bq_conversational_analytics_demo.ipynb) | [ObjectRef](https://cloud.google.com/bigquery/docs/release-notes), [AI.FORECAST](https://cloud.google.com/bigquery/docs/reference/standard-sql/bigqueryml-syntax-forecast) | BigQueryToolset | Multi-modal analytics: forecast sales, detect anomalies, and cross-reference GCS receipt images — all via natural language |
| [Dataplex Catalog Discovery](./partner-demos-march-2026/bq_dataplex_catalog_demo.ipynb) | [Dataplex Catalog](https://cloud.google.com/dataplex/docs/search-discover) | [BigQueryToolset (Dataplex search tool)](https://github.com/google/adk-python/releases/tag/v1.27.0) | Agent autonomously discovers unknown tables by searching enterprise metadata, then queries them |
| [Agentic Data Migrations](./partner-demos-march-2026/bq_migration_mcp_demo.ipynb) | [BQMS](https://cloud.google.com/bigquery/docs/migration-intro), [DTS](https://cloud.google.com/bigquery/docs/dts-introduction) | McpToolset | Zero-glue migration: translate Hive SQL → GoogleSQL and schedule data transfers via Managed MCP servers |

### Agentic AI & ADK

| Demo | GCP Features | ADK Features | Key Takeaway |
|------|-------------|--------------|--------------|
| [A2A Protocol](./partner-demos-march-2026/adk_multi_agent_a2a_demo.ipynb) | Vertex AI (Gemini 3.1 Pro) | [A2A Protocol](https://google.github.io/adk-docs/a2a/intro/), `RemoteA2aAgent` | Cross-service agent collaboration: a manager agent delegates to a remote specialist over the A2A handshake |
| [Enterprise Search Approaches](./partner-demos-march-2026/adk_skills_discovery_engine_demo.ipynb) | [Discovery Engine](https://cloud.google.com/generative-ai-app-builder/docs/enterprise-search-introduction) | SkillToolset, DiscoveryEngineSearchTool | Three search patterns compared: BQ vector similarity (RAG), Discovery Engine search, and agentic search (Bash) |
| [ADK Prompt Optimizer](./partner-demos-march-2026/adk_prompt_optimizer_demo.ipynb) | Vertex AI (Gemini 3.1 Pro) | [`adk optimize` & GEPA](https://github.com/google/adk-python/releases/tag/v1.27.0) | Systematic prompt engineering: evaluate baseline vs. optimized agent instructions against ground truth |

### Industry Solutions

| Demo | GCP Features | ADK Features | Key Takeaway |
|------|-------------|--------------|--------------|
| [SecOps Agentic Automation](./partner-demos-march-2026/secops_agentic_automation_demo.ipynb) | [Google SecOps — Agentic Automation](https://docs.cloud.google.com/chronicle/docs/soar/respond/working-with-playbooks/agentic-automation) | Runner, [Slack integration](https://github.com/google/adk-python/releases/tag/v1.28.0) | Hybrid workflow: AI agent investigates threat severity, deterministic code blocks IP; Slack alerts if configured |

> **Common to all March demos**: [ADK v1.28.0](https://github.com/google/adk-python/releases/tag/v1.28.0), Runner pattern with `InMemorySessionService`, Vertex AI auth (`GOOGLE_GENAI_USE_VERTEXAI`), Gemini 3.1 Pro (Preview).

---
*Maintained by the Partner Data & AI team.*
