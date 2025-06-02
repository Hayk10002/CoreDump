#! /bin/bash

ulimit -c unlimited
sudo sysctl -w kernel.core_pattern=./core"$1"
bash ./gen_core.sh
xxd -l 160 ./core"$1"
