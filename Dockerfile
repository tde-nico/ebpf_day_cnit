FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y
RUN apt-get install -y git make gcc clang libelf1 libelf-dev zlib1g-dev

RUN git clone --recurse-submodules https://github.com/libbpf/libbpf-bootstrap.git

COPY ./src/* /libbpf-bootstrap/examples/c

WORKDIR /libbpf-bootstrap/examples/c
RUN sed -i 's/^APPS =.*/& ebpf_day_tracepoint ebpf_day_kprobe /' Makefile

CMD [ "tail", "-f", "/dev/null" ]
