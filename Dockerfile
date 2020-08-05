FROM golang:1.14.6-alpine

RUN mkdir /go/src/soma
 
WORKDIR /go/src/soma
COPY ./soma.go ./soma_test.go ./

RUN go build soma.go

CMD ["./soma"]