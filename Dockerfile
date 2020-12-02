FROM ubuntu:latest

COPY setup.sh /setup.sh
COPY start.sh /start.sh
RUN /setup.sh
