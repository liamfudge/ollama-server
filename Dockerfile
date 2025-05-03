FROM ubuntu:latest
RUN apt update && apt install -y curl
RUN curl -fsSL https://ollama.com/install.sh | sh
RUN ollama pull gemma3:1b
EXPOSE 11434
CMD ["ollama", "serve", "--host", "0.0.0.0"]