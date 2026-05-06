# Build the mock Qwen server binary
# Docker command must be invoked from the project root directory
FROM golang:1.26.2@sha256:b54cbf583d390341599d7bcbc062425c081105cc5ef6d170ced98ef9d047c716 AS builder

ARG TARGETARCH

ENV GOARCH=$TARGETARCH

WORKDIR /src

COPY main.go main.go

RUN go build -o qwen-mock main.go

FROM debian:bookworm-slim@sha256:74d56e3931e0d5a1dd51f8c8a2466d21de84a271cd3b5a733b803aa91abf4421

WORKDIR /
COPY --from=builder /src/qwen-mock .
USER 0:0

ENV QWEN_PORT=8085
EXPOSE 8085

CMD [ "/qwen-mock" ]
