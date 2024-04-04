# eBPF Day Hands On

This repo contains everything you need to start experiment with eBPF. 

You only need to have a kernel compiled with `CONFIG_DEBUG_INFO_BTF=y` Kconfig. Many Linux distro comes with a kernel compiled with this parameter. Complete list of supported kernel can be found [here](https://github.com/libbpf/libbpf?tab=readme-ov-file#bpf-co-re-compile-once--run-everywhere).

Launch container with
```
./run-docker.sh
```

then in the container terminal mount debugfs with:
```
mount -t debugfs nodev /sys/kernel/debug
```

Compile the examples in `libbpf/examples/c` with:
```
make
```

To run an example run its user-space executable like:
```
./ebpf_day_tracepoint
```

When you edit files on `src` on your host system you can copy them in the container `libbpf/examples/c` path with:
```
./upload-files.sh
```

To open a new terminal inside the container you can use:
```
./open-console.sh
```