FROM ubuntu:latest
MAINTAINER Yingbin(Casper) Zhu "6954658@163.com"
ENV REFRESHED_AT 2016-12-08
ENV http_proxy="http://web-proxy.jp.hpecorp.net:8080"
RUN apt-get update
RUN apt-get install -y python3.5
RUN apt-get install -y python3-pip
RUN apt-get install -y python3-aiohttp
RUN apt-get install -y python3-jinja2
RUN apt-get install -y python3-pymysql
RUN apt-get install -y python3-aiopg
RUN apt-get install -y python3-sqlalchemy
RUN apt-get install -y python3-pyflakes
RUN apt-get install -y python3-pep8
RUN apt-get install -y uwsgi-plugin-asyncio-python3
RUN DEBIAN_FRONTEND=noninteractive apt install -y mysql-server
VOLUME /opt/python_test
ADD casper_jenkins_docker_integration/ /opt/python_test/
ADD casper_download_aiomysql/ /opt/python_test/
