# git-sim container

This is a simple Dockerfile that builds a container for [git-sim](https://initialcommit.com/blog/git-sim).

To build and run this containe you can use both Docker CLI, podman or probably any other tool that uses the same commandline arguments as these two tools.
Simply replace `${DOCKER}` with the command of your choice.

## Build the image locally 

```bash
${DOCKER} build -t gitsim .
```

## Run

The entry point in this container is `git-sim -d` so it will not try to automatically display the image.
The workingdirectory is set to `/src` so you need to mount your git repository as this volume.


```bash
${DOCKER} run -v .:/src -it --rm  gitsim log
```





