FROM debian:bullseye

COPY hello.sh ./
RUN chmod +x hello.sh

COPY whatsit.sh ./
RUN chmod +x whatsit.sh

ENTRYPOINT [ "hello.sh" ]