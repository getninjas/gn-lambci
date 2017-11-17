FROM alpine:3.4

WORKDIR /src

RUN apk add --no-cache bash curl git docker nodejs py-pip

RUN pip install docker-compose

ADD . .

CMD ./main.sh

