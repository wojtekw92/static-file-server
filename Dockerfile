FROM nginx:alpine

EXPOSE 8080

COPY configs/default.conf /etc/nginx/conf.d/default.conf

