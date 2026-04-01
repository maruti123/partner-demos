from google.adk import Agent

agent = Agent(
    model="gemini-3.1-pro-preview",
    name="SalesSupport",
    instruction="You are a sales support agent. Answer product questions."
)
