# demo-cloudbook-pro
Demo for cloudbook-pro apps.

Any application runs withing container based on official docker image.
Container is pure and don't have app specific state stored withing it.
And container is automatically removed when it exits. (docker run --rm)

All application specific dependencies are stored withing project workdir and
mounted to container.

### Setup
For all applications the setup is identical.
Go to application directory and run:
```
dc-run ./bin/setup
```

### Start
For all applications the start is identical.
Go to application directory and run:
```
dc up
```

### Example
To start Jupyter from scratch:
```
cd python/jupyter
dc-run ./bin/setup
dc up

```

If you lunch jupyter on remote cloudbook-pro instance, then run in separate tab:
```
cloudbook port 8888
```

Just open http://localhost:8888


