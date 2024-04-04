#!/bin/bash
docker build -t ebpf-day .
sudo docker rm -f ebpf_day || true
sudo docker run --privileged --name ebpf_day -it ebpf-day bash