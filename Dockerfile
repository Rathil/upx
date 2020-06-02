FROM alpine:3 AS get-upx

RUN apk add curl
RUN apk add xz
RUN curl -L \
        --output /upx.tar.xz \
        https://github.com/upx/upx/releases/download/v3.96/upx-3.96-amd64_linux.tar.xz \
    && tar -xf upx.tar.xz \
    && mv upx-3.96-amd64_linux/upx /upx

# image

FROM scratch
COPY --from=get-upx /upx /upx
WORKDIR /app/
ENTRYPOINT ["/upx"]