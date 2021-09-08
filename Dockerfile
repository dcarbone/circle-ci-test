FROM debian:bullseye

# create group for "us"
RUN addgroup \
    --gid "${GID}" \
    circleci

# create user for "us"
RUN adduser \
    --shell /usr/bin/bash \
    --no-create-home \
    --uid "${UID}" \
    --gid "${GID}" \
    --gecos "" \
    --disabled-login \
    circleci

COPY hello.sh /hello.sh
RUN chmod 755 /hello.sh

COPY whatsit.sh /whatsit.sh
RUN chmod 755 /whatsit.sh

ENTRYPOINT [ "/hello.sh" ]