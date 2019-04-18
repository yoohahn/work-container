# work-container

Just so I don't have to install nodejs and java on my machine.

## Build
```bash
$ docker rmi -f yoohahn/work-container:latest && docker build --rm -f "Dockerfile" -t yoohahn/work-container:latest .
```

## Run
### Simple
```bash
$ docker run --rm -it yoohahn/work-container:latest
```

### With volumes
```bash
$ USR=$(whoami) && docker run --rm \
    -v /Users/$USR/git:/root/git \
    -v /Users/$USR/.gradle:/root/.gradle \
    -v /Users/$USR/.npmrc:/root/.npmrc \
    -v /Users/$USR/.gitconfig:/root/.gitconfig \
    -v /Users/$USR/.gitignore:/root/.gitignore \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -it yoohahn/work-container:latest
```

## Publish
```bash
$ docker push yoohahn/work-container:latest
```
