FROM centos
RUN yum install wget \
    && yum install unzip \
    && wget wget https://raw.githubusercontent.com/gfh889527/fgh/master/v2ray-linux-64.zip \
    && unzip v2ray-linux-64.zip