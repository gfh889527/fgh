FROM centos


RUN yum update \
&& yum install wget -y \
&& yum install unzip -y \
&& wget https://raw.githubusercontent.com/gfh889527/fgh/master/v2ray-linux-64.zip \
&& unzip v2ray-linux-64.zip \
&& mkdir /usr/bin/v2ray \
&& cp v2ray /usr/bin/v2ray/v2ray \
&& cp v2ctl /usr/bin/v2ray/v2ctl \
&& cp geoip.dat /usr/bin/v2ray/geoip.dat \
&& cp geosite.dat /usr/bin/v2ray/geosite.dat \
&& mkdir /etc/v2ray/ \
&& wget https://raw.githubusercontent.com/gfh889527/nicolay/master/dachun.json \
&& cp dachun.json /etc/v2ray/config.json \
&& cp ./systemd/v2ray.service /usr/lib/systemd/system \
&& mkdir /var/log/v2ray/ \
&& touch /var/log/v2ray/access.log \
&& touch /var/log/v2ray/error.log \
&& touch /var/run/v2ray.pid \







