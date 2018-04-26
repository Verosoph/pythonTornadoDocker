FROM ubuntu

RUN RUN apt-get update && apt-get -y -q install python-software-properties software-properties-common   \
    && apt-get -y -q install postgresql-9.3 postgresql-client-9.3 postgresql-contrib-9.3
RUN apt-get update -y && apt-get install git python python-pip -y
RUN cd /tmp \
    && git clone https://github.com/Verosoph/pythonTornadoDocker.git \
    && cd pythonTornadoDocker \
    && pip install -r requirements.txt


EXPOSE 8889

CMD ["python", "/tmp/pythonTornadoDocker/app.py"]
