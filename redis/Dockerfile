FROM       sbusso/base
MAINTAINER Stéphane Busso <stephane.busso@gmail.com>

RUN add-apt-repository -y ppa:chris-lea/redis-server
RUN apt-get -y update
RUN apt-get -y install redis-server

# Clean up APT and temporary files when done
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*