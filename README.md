# julia-docker-dev
A containerized [Julia](https://julialang.org) development environment with [code-server](https://github.com/cdr/code-server).

## Run pre-built image

`mkdir .config`

`docker run --rm -it -p 8080:8080 -v "$(pwd)/.config:/home/coder/.config" luphord/julia-docker-dev`

## Building image and testing

`mkdir .config`

`docker build -t julia-docker-dev-local-build . && docker run --rm -it -p 8080:8080 -v "$(pwd)/.config:/home/coder/.config" julia-docker-dev-local-build`