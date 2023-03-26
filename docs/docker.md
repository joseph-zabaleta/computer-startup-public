# Docker & Kubernetes Notes
Docker is a platform or ecosystem aroudn creating and running containers

Docker  Ecosystem includes
- Docker `client`
- Docker `server`
- Docker `Machine`
- Docker `Images`
- Docker `Hub`
- Docker `Compose`

An `Image` is a single file with all the dependencies and configuration required to run a program. At any time you can use this an image to create a `Container`.

A `Container` is an instance of an `Image` that runs a program.

Docker `client` is a tool that we issue commands to, "Docker CLI".

Docker `server` is a tool responsible for creating images, "Docker Daemon".

`Dockerfile` is the configuration to define how our container should behave. Basic flow of a `Dockerfile`:
  - Specify a base image
  - Run some commands to install additional programs
  - Specify a command to run on container startup

### Commands
- `docker version`
  - This will display current version of docker client and server

- `docker run <image name>`
  - This creates and runs a container from an image
  - A combination of `docker create` and `docker start`
  - Can also run by `<tag name>`
  - Port mapping on run
    -`-p` tag
    - Example `Incoming Port Traffic : Port inside the container` or `8080:8080`


- `docker build .`
  - Builds an image from a `Dockerfile` when provided context
  - Can build with a `tag` using the `-t` flag.
  - Example: `docker build -t dezjoseph/someProject:latest` by convention the tag is as follows:
    - `devzjoseph` docker username or repository
    - `someProject` project name
    - `latest` is the version number, typically latest when creating a new build

- `docker ps`
  - This command will list all running containers currently running on your local machine

- `docker ps --all`
  - This is a listing of all containers you have ever created.

- `docker system prune`
  - This will remove all stopped containers, all networks not used by at least one container, all dangling images, and build cache.

- `docker logs <container id>`
  - This will get a record of all the logs emitted from a container.

- `docker stop <container id>`
  - This will stop a running container by sending a SIGTERM signal to the running process. This allows for the ability to do cleanup before the container stops.
  - If the container does not stop on it's own after 10 seconds, docker defaults to issuing a docker kill command.

- `docker kill <container id>`
  -  This will stop a running container by sending a SIGKILL signal to the running process. This terminates the container immediately.

- `docker exec -it <container id> <command>`
  - This is a command to "execute" another command inside a container.
  - `-it` flag
    - `-i` "interactive" attaches your terminal to the STDIN of the process your are targeting and sends the process STDOUT to your terminal
    - `-t` "pseudo-TTY" Overall formats the text from STDOUT to make it prettier. (does other things but this is a main feature)
    - `sh` flag
      - Allows you to get a command prompt inside a container