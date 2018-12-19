FROM node:alpine as builder
LABEL MAINTAINER="playniuniu@gmail.com"

RUN apk add --update --no-cache git
RUN git clone https://github.com/LLK/scratch-gui.git
RUN cd scratch-gui \
    && npm install \
    && npm run build

FROM nginx:alpine
COPY --from=builder /scratch-gui/build /usr/share/nginx/html
