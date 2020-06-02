# Compress application

```bash
docker run --rm -v $(pwd):/app rathil/upx --brute COMPRESSED_APP_NAME
```

# Compress application in quietly mode

```bash
docker run --rm -v $(pwd):/app rathil/upx -q --brute COMPRESSED_APP_NAME
```