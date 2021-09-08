FROM debian:bullseye

COPY hello.sh /whatsit.sh
RUN chmod +x /hello.sh

COPY whatsit.sh /whatsit.sh
RUN chmod +x /whatsit.sh

ENTRYPOINT [ "/hello.sh" ]