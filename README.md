# pythonTornadoDocker

This is a tornado example written in python.

## Installation (local)

1. `git clone https://github.com/Verosoph/pythonTornadoDocker.git`

2. `cd pythonTornadoDocker`

3. `pip install -r requirements.txt`

4. `python app.py`

5. `http://localhost:8889/`

## Run as Docker Composition

### Create and run Docker container
```
docker-compose up
```

####  pgAdmin4
    http://localhost:5050

to connect to the postgres Docker
use `db` as hostname <br>
( refering to the name of the postgres docker inside docker-compose.yml)



#### Access into a docker container use:
```
docker exec -ti CONTAINERNAME env COLUMNS=$COLUMNS LINES=$LINES TERM=$TERM bash -l

```


