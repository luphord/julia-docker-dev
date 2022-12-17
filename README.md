# julia-docker-dev
A containerized [Julia](https://julialang.org) development environment with [code-server](https://github.com/cdr/code-server).
Available on Docker Hub as [luphord/julia-docker-dev](https://hub.docker.com/r/luphord/julia-docker-dev).
Built from [Dockerfile](https://github.com/luphord/julia-docker-dev/blob/main/Dockerfile).

## Run pre-built image

`mkdir .config`

`docker run --rm -it -p 8080:8080 -v "$(pwd)/.config:/home/coder/.config" luphord/julia-docker-dev`

## Building image and testing

`mkdir .config`

`docker build -t julia-docker-dev-local-build . && docker run --rm -it -p 8080:8080 -v "$(pwd)/.config:/home/coder/.config" julia-docker-dev-local-build`

## Configuration

Running a container using either command from above will automatically create a file `.config/code-server/config.yaml`. Here, you can change the password (which requires a restart of the container to become effective).

## Usage

Having started the container using either method from above, open http://localhost:8080 in your browser. Note that you will have to mount other directories if you want to persist any changes.