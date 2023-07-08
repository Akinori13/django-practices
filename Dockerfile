FROM python:3.10-slim-buster
ENV PYTHONUNBUFFERED 1

RUN apt-get update
RUN apt-get -y install git

RUN python -m venv venv
ENV PATH="/venv/bin:$PATH"

WORKDIR /app

COPY requirements.txt /app/

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . /app/