FROM golang:latest as builder

COPY . /go/src/github.com/pbakulev/example-api-go

WORKDIR /go/src/github.com/pbakulev/example-api-go

RUN go mod download 

RUN CGO_ENABLED=0 GOOS=linux go build main.go

FROM alpine:latest

RUN mkdir /app

COPY --from=builder /go/src/github.com/pbakulev/example-api-go/main /app

EXPOSE 8080

ENTRYPOINT [ "/app/main" ]
