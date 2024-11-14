# ipex-llm-serve-llama.cpp

For more details, check [intel-analytics/ipex-llm](https://github.com/intel-analytics/ipex-llm/blob/d4d949443f34518868bcf5b65a612cfd7ee00952/docs/mddocs/DockerGuides/docker_cpp_xpu_quickstart.md#start-docker-container).

For Linux:

```shell
docker run -it --rm \
    --name=xxx \
    -e DEVICE=iGPU \
    -v ./models:/models \
    --device=/dev/dri \
    --memory="48G" \
    --shm-size="32G" \
    ghcr.io/lirc572/ipex-llm-serve-llama.cpp:latest \
    /llm/llama-cpp/llama-cli \
    -m /models/smollm2-360m-instruct-q8_0.gguf \
    --ignore-eos -n -1 \
    --prompt "Why is the sky blue?"
```

For WSL (`--privileged` is required in WSL):

```shell
docker run -it --rm \
    --name=xxx \
    --privileged \
    -e DEVICE=iGPU \
    -v /usr/lib/wsl:/usr/lib/wsl \
    -v ./models:/models \
    --device=/dev/dri \
    --memory="8G" --shm-size="8G" \
    ghcr.io/lirc572/ipex-llm-serve-llama.cpp:latest \
    /llm/llama-cpp/llama-cli \
    -m /models/smollm2-360m-instruct-q8_0.gguf \
    --ignore-eos -n -1 \
    --prompt "Why is the sky blue?"
```
