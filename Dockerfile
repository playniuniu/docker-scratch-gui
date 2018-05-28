FROM node:alpine
LABEL MAINTAINER="playniuniu@gmail.com"

RUN apk add --no-cache git \
    && cd /opt \
    && git clone https://github.com/LLK/scratch-gui.git \
    && cd scratch-gui \
    && npm install

WORKDIR /opt/scratch-gui
EXPOSE 8601
CMD ["npm","start"]
