FROM golang:1.22-alpine

RUN apk add --no-cache make bash

WORKDIR /app/evilginx2
COPY evilginx2 /app/evilginx2

RUN pwd
RUN make build

CMD ["./build/evilginx", "-p", "phishlets"]