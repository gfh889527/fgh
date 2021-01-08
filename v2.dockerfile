FROM centos
RUN yum update -y -y \
&& yum install wget -y \
&& yum install unzip -y \
&& wget https://raw.githubusercontent.com/gfh889527/fgh/master/v2ray-linux-64.zip \
&& unzip v2ray-linux-64.zip \
&& mkdir dachun \
&& touch da1.sh \

