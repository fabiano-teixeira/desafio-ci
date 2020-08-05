FROM golang:1.14.6-alpine as builder

#RUN apk add --no-cache bash 
RUN mkdir /go/src/soma
 
WORKDIR /go/src/soma
COPY ./soma.go ./soma_test.go ./

RUN go build soma.go

# FROM scratch

# COPY --from=builder /go/src/soma/soma .
CMD ["./soma"]