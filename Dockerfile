FROM golang:1.9.3-alpine AS builder
COPY /*.go /
RUN apk add --no-cache python2 g++ make && go build -o /hello-from-arm64 /*.go

FROM alpine:3.7
COPY --from=builder /hello-from-arm64 /
ENTRYPOINT ["/hello-from-arm64"]
