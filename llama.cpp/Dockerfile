ARG BASE_IMAGE_TAG=latest

FROM intelanalytics/ipex-llm-inference-cpp-xpu:${BASE_IMAGE_TAG}
LABEL org.opencontainers.image.source=https://github.com/lirc572/ipex-llm-serve

RUN mkdir -p /llm/llama-cpp && cd /llm/llama-cpp && init-llama-cpp

WORKDIR /llm/llama-cpp

COPY entrypoint.sh /llm/llama-cpp/entrypoint.sh

ENTRYPOINT ["/llm/llama-cpp/entrypoint.sh"]
CMD ["/llm/llama-cpp/llama-server"]
