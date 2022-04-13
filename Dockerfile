FROM node:16

RUN apt update && apt install -y libpcsclite-dev && apt clean && rm -rf /var/lib/apt/lists/* && npm install -g  arib-b25-stream-test

ENTRYPOINT /usr/local/bin/arib-b25-stream-test
