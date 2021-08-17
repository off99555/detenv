# detenv

Custom Determined.AI Environments

## How to modify the docker image

1. Modify the `Dockerfile`.
2. Use `docker build -t off99555/detenv:py-3.7-pytorch-1.9-lightning-1.3-tf-2.4-cpu-0.16.3 .` to build the docker image.
3. Use `docker run -it off99555/detenv:py-3.7-pytorch-1.9-lightning-1.3-tf-2.4-cpu-0.16.3` to test run the docker image.
4. Use `docker push off99555/detenv:py-3.7-pytorch-1.9-lightning-1.3-tf-2.4-cpu-0.16.3` to push the docker image to the docker repo.

Repeat the same process for cuda image also.

My docker repo:
https://hub.docker.com/repository/docker/off99555/detenv

Determined docker repo:
https://hub.docker.com/r/determinedai/environments