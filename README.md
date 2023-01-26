# git-sim container

This is a simple Dockerfile that builds a container for [git-sim](https://initialcommit.com/blog/git-sim).

## Build the image locally 

The image can be build using the Docker or podman CLI. Replace `${DOCKER}` with the command of your choice.

```bash
${DOCKER} build -t gitsim .
```

## Run

```bash
podman run -v .:/src -it --rm  gitsim log
```





