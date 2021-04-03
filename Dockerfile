FROM python:3.8

COPY requirements.txt /app/
RUN pip3 install -r /app/requirements.txt

COPY converter /app/converter
