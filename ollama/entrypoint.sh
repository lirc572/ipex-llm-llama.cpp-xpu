#!/usr/bin/env bash

source ipex-llm-init --gpu --device $DEVICE

exec "$@"
