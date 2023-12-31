# python-docker-restapi
python docker restapi project

## Run this project

### Docker

All you need to run this project is **docker**

1. set up docker
2. use docker to run that project

### Run Service

``` bash
docker-compose up -d service
```

or

``` bash
docker-compose run -d -p 8080:8080 service
```

docker-compose up:

* Purpose: docker-compose up is used to start the services defined in your docker-compose.yml file and create containers based on the specified configurations.

* Usage: It is typically used to start services as background services, which run continuously, just like a service would in a production environment. **Run as a Service**.


* Example: docker-compose up -d starts services in detached mode (in the background), while docker-compose up without the -d flag runs services in the foreground, which is useful for debugging or observing container logs.


docker-compose run:

* Purpose: docker-compose run is used to run a one-off command or task within a new container based on a service defined in your docker-compose.yml file. It's often used for debugging, running ad-hoc commands, or executing short-term tasks within the context of a service.

* Usage: It is typically used for temporary tasks and is not intended for starting long-running background services. It creates a new container for the specified service, executes the command, and then stops the container.

**up is preferred for service**

### Run Devbox

```bash
docker-compose run -p 8080:8080 devbox
```

## Debug

### FastApi project documentation and testing

`http://localhost:8080/docs`