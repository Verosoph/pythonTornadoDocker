# pythonTornadoDocker

This is a tornado example written in python.

### Installation

1. `git clone https://github.com/Verosoph/pythonTornadoDocker.git`

2. `cd pythonTornadoDocker`

3. `pip install -r requirements.txt`

4. `python app.py`

5. http://localhost:8889/

### Docker
```
docker build -t tornado_app .
docker run -d -p 8889:8889 tornado_app
```

### or
```
docker-compose up
```

