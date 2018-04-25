FROM ubuntu

RUN apt-get update -y && apt-get install python python-pip -y
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 8888

CMD ["python", "app.py"]
