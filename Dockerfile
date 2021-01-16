FROM golang:1.13.6-alpine

WORKDIR /go/src

COPY ./src /go/src

RUN apk update && apk add git
RUN go get github.com/go-sql-driver/mysql
RUN go get github.com/jinzhu/gorm