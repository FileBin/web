# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt /app
RUN pip3 install -r requirements.txt

COPY app .

EXPOSE 5000/tcp

CMD ["flask", "run", "--host", "0.0.0.0"]
