FROM nginx:1.17.3
MAINTAINER Amos Wang
ADD nginx.conf /etc/nginx/nginx.conf
ADD default.conf /etc/nginx/conf.d/default.conf
ADD cloudflare.conf /etc/nginx/cloudflare.conf
ADD bot_deny.conf /etc/nginx/bot_deny.conf
ADD ssl /etc/nginx/ssl
EXPOSE 80
EXPOSE 443
EXPOSE 8080

#build images
#docker build -t="nginx-reverse-proxy:1.0.0" .

#推上docker hub，要先加上tag
#docker tag nginx-reverse-proxy:1.0.0 amoswang0917/nginx-reverse-proxy:1.0.0
#docker push amoswang0917/nginx-reverse-proxy:1.0.0

#version list
#nginx-reverse-proxy:1.0.0 
#支援TCP40000-40500 Port反向代理
#支援X-Forwarded
#使用方法docker run --name nginx-reverse-proxy -d -p 40000-40500:40000-40500 nginx-reverse-proxy:1.0.0