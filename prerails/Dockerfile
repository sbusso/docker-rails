FROM       sbusso/ruby
MAINTAINER Stéphane Busso <stephane.busso@gmail.com>

# Add Chris Lea NodeJS repository
RUN apt-add-repository ppa:chris-lea/node.js

# Add PostgreSQL Global Development Group apt source
RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main" > /etc/apt/sources.list.d/pgdg.list

# Add PGDG repository key
RUN wget -qO - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | apt-key add -

RUN apt-get update

# Install Ruby application dependencies
RUN apt-get install -y \
  libpq-dev \
  postgresql-client-9.3 \
  nodejs \
  zlib1g-dev \
  libssl-dev

# Clean up APT and temporary files when done
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
