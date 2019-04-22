FROM buildpack-deps:jessie

# ensure local python is preferred over distribution python
ENV PATH /usr/local/bin:$PATH

RUN echo ' \n\
deb http://mirrors.163.com/debian/ stretch main non-free contrib \n\
deb http://mirrors.163.com/debian/ stretch-updates main non-free contrib \n\
deb http://mirrors.163.com/debian/ stretch-backports main non-free contrib \n\
deb-src http://mirrors.163.com/debian/ stretch main non-free contrib \n\
deb-src http://mirrors.163.com/debian/ stretch-updates main non-free contrib \n\
deb-src http://mirrors.163.com/debian/ stretch-backports main non-free contrib \n\
deb http://mirrors.163.com/debian-security/ stretch/updates main non-free contrib \n\
deb-src http://mirrors.163.com/debian-security/ stretch/updates main non-free contrib \n\
' > /etc/apt/sources.list

RUN apt-get update && apt-get install -y --no-install-recommends stress