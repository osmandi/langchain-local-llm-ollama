FROM ubuntu:24.04

WORKDIR /app

# Prepare environment
RUN apt-get update \
  && apt-get install -y curl

# Install uv and ollama
RUN curl -LsSf https://astral.sh/uv/install.sh | sh \
  && curl -fsSL https://ollama.com/install.sh | sh

# Copy files to the image
COPY ./ /app/

# Run Ollama Serve, get Ollama model and run LangChain with uv
CMD /bin/bash -c "ollama serve & sleep 2 && ollama pull llama3 && $HOME/.local/bin/uv run main.py ; pkill ollama"
