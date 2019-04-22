FROM centos:latest

MAINTAINER songsx@gooalgene.com

# 解决docker容器中无法使用中文问题
ENV LANG C.UTF-8

RUN mkdir /usr/src/python

COPY python.tar.xz /usr/src/python/python.tar.xz

RUN set -ex \
    && yum install -y gcc openssl-devel bzip2-devel libffi-devel cmake make \
    && cd /usr/src/python \
    && tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz \
    && rm python.tar.xz \
    \
    && ./configure \
        --enable-loadable-sqlite-extensions \
        --enable-shared \
        --with-system-expat \
        --with-system-ffi \
		--without-ensurepip \
	&& make -j "$(nproc)" \
	&& make install \
	# 解决ldconfig时libpython3.7m.so.1.0找不到问题
	 && echo "/usr/local/lib" > /etc/ld.so.conf.d/python3.7.conf \
	 && ldconfig \
	 \
     && python3 --version


