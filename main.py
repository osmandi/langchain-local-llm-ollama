from langchain_ollama import ChatOllama

def main():
    print("Hello from langchain-local-llm-ollama!")
    human_request = "They say data is the new oil… and I'm the chemical engineer!"
    print(human_request)
    llm = ChatOllama(
        model="llama3",
        temperature=0,
    )
    
    messages = [
        ("system", "You are a helpful assistant that translates English to Spanish. Be concise don't ask question and translate the user sentence.",),
        ("human", human_request),
    ]
    ai_msg = llm.invoke(messages)
    print(ai_msg.content)

if __name__ == "__main__":
    main()
