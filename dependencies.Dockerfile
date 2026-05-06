# This is a renovate-friendly source of Docker images.
FROM davidanson/markdownlint-cli2:v0.22.1@sha256:0ed9a5f4c77ef447da2a2ac6e67caf74b214a7f80288819565e8b7d2ac148fe5 AS markdown
FROM gradle:9.5.0-jdk21-noble@sha256:f2796e317ff13e2d0e10b83bb4aed71721d51570b55829972a5d9d89a6e96381 AS gradle-java
FROM ghcr.io/astral-sh/uv:python3.9-trixie-slim@sha256:9d292e004ee37686d86c09ec879000bfda0b4ba336a78842fd4555ad84efa0fb AS python39
FROM ghcr.io/astral-sh/uv:python3.14-trixie-slim@sha256:3e70f580d0e63d78408c35d332d780024b6e1d46d9744c888e22fa944393448e AS python314
FROM golang:1.26.2@sha256:b54cbf583d390341599d7bcbc062425c081105cc5ef6d170ced98ef9d047c716 AS golang
