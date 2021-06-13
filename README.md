# Kafka-Docker
A Python:Slim based docker image that installs Flask v1.1.2, Librdkafka, and Confluent-Kafka v1.6.0
The docker file can be used for Python based projects that uses Kafka as a communication system.

The slim version is used instead of alpine because GCC and Librdkafka are needed to be installed on the container image for confluent-kafka to work properly.
However, this increases the docker image size to 270 MB (python:slim size is 115 MB).