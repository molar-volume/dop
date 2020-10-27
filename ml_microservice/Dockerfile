FROM python:3

RUN pip install flask

RUN mkdir -p /app
WORKDIR /app
COPY main.py .
ENV FLASK_APP=/app/main.py

ENV APP_NAME=MusicKA.ml_service
ENV APP_VERSION=v1.0.0

CMD ["flask", "run", "--host=127.0.0.1"]
