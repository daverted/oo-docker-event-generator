### Building the Image
```bash
docker build --no-cache -t timveil/oo-docker-event-generator:alpine-glibc .
```

### Publishing the Image
```bash
docker push timveil/oo-docker-event-generator:alpine-glibc
```

### Running the Image
```bash
docker run -it timveil/oo-docker-event-generator:alpine-glibc
```