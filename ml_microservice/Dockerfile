FROM python:3

RUN pip install flask

RUN mkdir -p /app
WORKDIR /app

ENV APP_NAME=CloudAcademy.DevOps
ENV APP_VERSION=v1.0.0

CMD ["flask", "run", "--host=127.0.0.1"]
