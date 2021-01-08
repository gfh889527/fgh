#!/bin/bash
ZHILING1=$(apt-get update -y&&apt-get install docker -y&&apt-get install curl -y)
ZHILING2=$(docker version > /dev/null || curl -fsSL get.docker.com | bash)
ZHILING3=$(service docker restart)
ZHILING4=$(systemctl enable docker)
ZHILING5=$(docker run -it --name baota -p 80:80 -p 443:443 -p 888:888 -p 8888:8888 -p 3306:3306 --restart=always nicolay2586945/baota:1.1)



echo ${ZHILING1}
echo ${ZHILING2}
echo ${ZHILING3}
echo ${ZHILING4}
echo ${ZHILING5}




