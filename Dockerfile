FROM ubuntu:trusty
ENV DEBIAN_FRONTEND noninteractive
RUN echo "deb http://ppa.launchpad.net/ondrej/php/ubuntu trusty main" >  /etc/apt/sources.list.d/php.list && \
	sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E5267A6C && \
	apt-get update && \
	apt-get install -f -y gearman

EXPOSE 4730
CMD gearmand -p 4730 -L 0.0.0.0
