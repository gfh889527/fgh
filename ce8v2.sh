#!/bin/bash
#centos8一键安装v2ray
#author:dachun
#call me:2018268499@qq.com
ZHILING1=$(rm -rf /etc/localtime && ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime)
ZHILING3=$(wget https://raw.githubusercontent.com/gfh889527/fgh/master/v2ray-linux-64.zip)
ZHILING4=$(unzip v2ray-linux-64.zip)
ZHILING5=$(mkdir /usr/bin/v2ray)
ZHILING6=$(cp v2ray /usr/bin/v2ray/v2ray)
ZHILING7=$(cp v2ctl /usr/bin/v2ray/v2ctl)
ZHILING8=$(cp geoip.dat /usr/bin/v2ray/geoip.dat)
ZHILING9=$(cp geosite.dat /usr/bin/v2ray/geosite.dat)
ZHILING11=$(mkdir /etc/v2ray/)
ZHILING12=$(wget https://raw.githubusercontent.com/gfh889527/nicolay/master/dachun.json)
ZHILING13=$(cp dachun.json /etc/v2ray/config.json)
ZHILING14=$(cp ./systemd/v2ray.service /usr/lib/systemd/system)
ZHILING15=$(mkdir /var/log/v2ray/)
ZHILING16=$(touch /var/log/v2ray/access.log)
ZHILING17=$(touch /var/log/v2ray/error.log)
ZHILING18=$(touch /var/run/v2ray.pid)
ZHILING19=$(systemctl start v2ray)
ZHILING20=$(systemctl status v2ray)
ZHILING21=$(systemctl enable v2ray)
ZHILING22=$(systemctl stop firewalld.service)
ZHILING23=$(systemctl disable firewalld.service)
ZHILING24="16823"
ZHILING25="b831381d-6324-4d53-ad4f-8cda48b30811"
ZHILING26="ws"
ZHILING27="64"




#调整时间
echo ${ZHILING1}


#解压以及创建目录
echo ${ZHILING3}
echo ${ZHILING4}
echo ${ZHILING5}
echo ${ZHILING6}
echo ${ZHILING7}
echo ${ZHILING8}
echo ${ZHILING9}
echo ${ZHILING10}
echo ${ZHILING11}
echo ${ZHILING12}
echo ${ZHILING13}
echo ${ZHILING14}
echo ${ZHILING15}
echo ${ZHILING16}
echo ${ZHILING17}
echo ${ZHILING18}
echo ${ZHILING19}
echo ${ZHILING20}
echo ${ZHILING21}
echo ${ZHILING22}
echo ${ZHILING23}


echo "端口：${ZHILING24}"
echo "UUID：${ZHILING25}"
echo "网络协议：${ZHILING26}"
echo "额外ID：${ZHILING27}"















