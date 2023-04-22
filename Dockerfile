FROM golang:alpine AS go_builder
RUN apk update && apk add --no-cache git
WORKDIR $GOPATH/src
COPY . .
RUN go get -d -v
RUN go build -o /go/bin/hello

FROM scratch
COPY --from=go_builder /go/bin/hello /usr/local/hello
ENTRYPOINT ["/usr/local/hello"]
