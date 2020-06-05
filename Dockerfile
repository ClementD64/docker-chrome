FROM debian:buster

ENV DEBIAN_FRONTEND=noninteractive \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8 \
    LC_ALL=C.UTF-8 \
    DISPLAY=:0

RUN apt-get update && \
    apt-get install -y \
      --no-install-recommends \
      net-tools \
      socat \
      novnc \
      supervisor \
      x11vnc \
      xvfb \
      chromium && \
      ln -s /usr/share/novnc/vnc.html /usr/share/novnc/index.html

EXPOSE 6080 9222
COPY . /app
CMD [ "supervisord", "-c", "/app/supervisord.conf" ]