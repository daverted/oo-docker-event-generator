### Building the Image
```bash
docker build --no-cache -t timveil/oo-docker-event-generator:latest .
```

### Publishing the Image
```bash
docker push timveil/oo-docker-event-generator:latest
```

### Running the Image
```bash
docker run -it timveil/oo-docker-event-generator:latest
```