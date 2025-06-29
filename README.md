# Build image

```
docker build -t cross-arm:latest .
```

## Build shell

```
docker run --rm \
  -v "$PWD":/src \
  cross-arm:latest \
  arm-linux-gnueabi-gcc --static -O2 /src/bindshell.c -o /src/bindshell
```
