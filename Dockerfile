FROM ubuntu:latest
RUN apt update && apt install -y curl
RUN curl -fsSL https://ollama.com/install.sh | sh
EXPOSE 11434
ENV OLLAMA_HOST 0.0.0.0
CMD ["ollama", "serve"]