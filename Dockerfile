FROM python:3.10-slim-buster as build-stage
 
ENV PYTHONUNBUFFERED 1
COPY ./requirements.txt /requirements.txt
RUN apt-get update && apt-get install -y gcc libpq-dev
RUN python3 -m pip install -U pip setuptools wheel
RUN pip install -r /requirements.txt
RUN mkdir /app
COPY ./. /app
WORKDIR /app