# demo-cloudbook-pro
Demo for cloudbook-pro apps.

Any application runs withing container based on official docker image.
Container is pure and don't have app specific state stored withing it.
And container is automatically removed when it exits. (docker run --rm)

All application specific dependencies are stored withing project workdir and
mounted to container.

### Setup
For all applications (but jupyter) the setup is identical.
Go to application directory and run:
```
docker-compose run --rm app ./bin/setup
```

Depends on application it could have different scripts to run it.
But in most cases this should just work:
```
docker-compose up app
```

For `jupyter` extra step is required to workaround permissions.
The step is about to build and use local image.
Go to application directory and run:
```
./bin/setup.local
```

To start jupyter use shortcut
```
./bin/up jupyter
```
Or jupyter lab
```
./bin/up jupyterlab
```
