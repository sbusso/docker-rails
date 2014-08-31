FROM       sbusso/base
MAINTAINER Stéphane Busso <stephane.busso@gmail.com>
ENV RUBY_VERSION 2.1.2

# Install packages for building ruby
RUN apt-get install -y --force-yes build-essential
RUN apt-get install -y --force-yes zlib1g-dev libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt-dev

# Install ruby-install
RUN wget http://cache.ruby-lang.org/pub/ruby/2.1/ruby-"$RUBY_VERSION".tar.gz

RUN tar xvfz ruby-"$RUBY_VERSION".tar.gz

RUN cd ruby-"$RUBY_VERSION" && ./configure && make && sudo make install

# Install Bundler for each version of ruby
RUN echo 'gem: --no-rdoc --no-ri' >> /.gemrc
RUN gem update --system && gem install bundler

# Clean up APT and temporary files when done
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && rm ruby-"$RUBY_VERSION".tar.gz
