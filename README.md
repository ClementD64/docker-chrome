# docker-chrome

Run chrome inside docker with novnc and remote debugging

```sh
docker build -t docker-chrome .
docker run --name chrome --restart unless-stopped -p 6080:6080 -p 127.0.0.1:9222:9222 docker-chrome
```