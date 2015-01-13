# What is Docker-FLAPI
Docker-FLAPI is a project template to create API based on [JSON-RPC](http://www.jsonrpc.org/specification) and [Flask](http://flask.pocoo.org/).
# How to use

## Pull and Run the Docker Container

```
docker run --name flapi -d -p 5000:5000 riftbit/docker-flapi
```

Test it by visiting `http://container-ip:5000` in a browser. On the other hand, if you need access outside the host on port 8080:

```
docker run --name flapi -d -p 8080:5000 riftbit/docker-flapi
```

Then go to `http://localhost:8080` or `http://host-ip:8080` in a browser.

## Start with pulling changes from git repo

```
docker run --name flapi-custom -d -p 5000:5000 riftbit/docker-flapi with-update
```

