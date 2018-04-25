FROM ubuntu

RUN apt-get update -y && apt-get install git python python-pip -y
RUN cd /tmp \
    && git clone https://github.com/Verosoph/pythonTornadoDocker.git \
    && cd pythonTornadoDocker \
    && pip install -r requirements.txt
RUN apt-get install postgresql postgresql-contrib


EXPOSE 8889

CMD ["python", "/tmp/pythonTornadoDocker/app.py"]
