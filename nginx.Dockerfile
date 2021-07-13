FROM nginx:latest

RUN mkdir -p /app
COPY ./app /app

RUN rm /etc/nginx/conf.d/default.conf
COPY ./default.conf /etc/nginx/conf.d/

WORKDIR /app
EXPOSE 80
