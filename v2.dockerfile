FROM centos
MAINTAINER “Dan Walsh” <dwalsh@redhat.com>
ENV container docker
RUN yum update \
&& yum install wget -y \
RUN yum clean all
RUN yum -y install systemd; yum clean all; 
(cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i   == systemd-tmpfiles-setup.service ] || rm -f $i; done); 
rm -f /lib/systemd/system/multi-user.target.wants/*;
rm -f /etc/systemd/system/*.wants/*;
rm -f /lib/systemd/system/local-fs.target.wants/*; 
rm -f /lib/systemd/system/sockets.target.wants/*udev*; 
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; 
rm -f /lib/systemd/system/basic.target.wants/*;
rm -f /lib/systemd/system/anaconda.target.wants/*;
VOLUME [ “/sys/fs/cgroup” ]
CMD [“/usr/sbin/init”]

RUN yum install unzip -y \
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
&& systemctl start v2ray \
&& systemctl status v2ray \
&& systemctl enable v2ray \
&& systemctl stop firewalld.service \
&& systemctl disable firewalld.service \






