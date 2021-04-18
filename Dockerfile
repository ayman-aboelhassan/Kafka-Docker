# syntax=docker/dockerfile:experimental
# Load Slim Python Image
FROM python:slim

# Install GCC and librdkafka
RUN apt-get update \
    && apt-get install -y gcc librdkafka-dev

# Copy & install python libraries required
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install --user -r requirements.txt