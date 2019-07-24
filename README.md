# AWSCLI Docker
Dockerized [aws-cli](https://aws.amazon.com/cli/) in
[Alpine](https://www.alpinelinux.org/).

Usage of this image assumes basic understanding
of [**running Docker images**](https://docs.docker.com/engine/reference/run/).

[![pipeline](https://img.shields.io/gitlab/pipeline/bdebyl/docker-awscli.svg)](https://gitlab.com/bdebyl/docker-awscli/pipelines)
[![docker pulls](https://img.shields.io/docker/pulls/bdebyl/awscli.svg)](http://hub.docker.com/r/bdebyl/awscli/)


# Usage
The expected usage is to pass the AWS configuration values (_access key, secret
key, region_) when running the container. The basic entrypoint of the docker
image is the `aws` binary. This means it's as simple as running the following
command (*for help*):
```
docker run bdebyl/awscli help
```


**Note:** _It is recommended to append the `--rm` option after `docker run` to
keep things clean, or naming your container appropriately for re-use._

## Example
The following example should be used for reference when running the server with
all necessary options:
```bash
docker run -it --rm \
    -e "AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}" \
    -e "AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}" \
    -e "AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION}" \
    bdebyl/awscli
```
