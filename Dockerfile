FROM ubuntu:latest

COPY setup.sh /setup.sh
RUN /setup.sh
COPY start.sh /start.sh
ENTRYPOINT [ "/bin/bash", "/start.sh" ]
