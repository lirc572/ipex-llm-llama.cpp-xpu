ARG BASE_IMAGE_TAG=latest

FROM intelanalytics/ipex-llm-inference-cpp-xpu:${BASE_IMAGE_TAG}
LABEL org.opencontainers.image.source=https://github.com/lirc572/ipex-llm-serve

RUN mkdir -p /llm/ollama && cd /llm/ollama && init-ollama

WORKDIR /llm/ollama

COPY entrypoint.sh /llm/llama-cpp/entrypoint.sh

ENTRYPOINT ["/llm/llama-cpp/entrypoint.sh"]
CMD ["/llm/ollama/ollama", "serve"]
