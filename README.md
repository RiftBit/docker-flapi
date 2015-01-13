# What is Docker-FLAPI
Docker-FLAPI is a project template to create API based on [JSON-RPC](http://www.jsonrpc.org/specification) and [Flask](http://flask.pocoo.org/).

# How to use
## Pull image
```
docker pull riftbit/docker-flapi
```

## Create folder to mount sources
```
mkdir -p /home/<your_user_name>/flapi
```

## Run the Docker Container from pulled image
```
docker run --name flapi -d -p 5000:5000 -v /home/<your_user_name>/flapi:/flapi riftbit/docker-flapi
```

Test it by visiting `http://container-ip:5000` in a browser. On the other hand, if you need access outside the host on port 8080:
```
docker run --name flapi -d -p 8080:5000 -v /home/<your_user_name>/flapi:/flapi riftbit/docker-flapi
```

Then go to `http://localhost:8080` or `http://host-ip:8080` in a browser.
```
