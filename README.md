docker-flapi
==============

A docker.io container for flask json rpc api project


Building and running the container image
----------------------------------------

Clone this repo and cd into the cloned directory

Run the following docker command
```shell
docker run --name flapi -d -p 5000:5000 riftbit/docker-flask
```