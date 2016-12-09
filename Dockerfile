FROM ubuntu:latest
MAINTAINER Yingbin(Casper) Zhu "6954658@163.com"
#RUN export http_proxy="http://web-proxy.jp.hpecorp.net:8080"
ENV REFRESHED_AT 2016-12-08
ENV http_proxy="http://web-proxy.jp.hpecorp.net:8080"
RUN apt-get update
RUN apt-get install -y python3.5
VOLUME /opt/python_test
ADD casper_jenkins_docker_integration/ /opt/python_test/
