FROM nginx:1.17.3
MAINTAINER Amos Wang
ADD default.conf /etc/nginx/default.conf
EXPOSE 40000-40500

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