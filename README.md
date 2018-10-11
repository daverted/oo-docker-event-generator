### Building the Image
```bash
docker build --no-cache -t timveil/oo-docker-event-generator:alpine-musl .
```

### Publishing the Image
```bash
docker push timveil/oo-docker-event-generator:alpine-musl
```

### Running the Image
```bash
docker run -it timveil/oo-docker-event-generator:alpine-musl
```