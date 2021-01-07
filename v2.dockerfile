FROM centos
RUN yum install wget -y \
    && yum install unzip -y \
    && wget wget https://raw.githubusercontent.com/gfh889527/fgh/master/v2ray-linux-64.zip \
    && unzip v2ray-linux-64.zip
