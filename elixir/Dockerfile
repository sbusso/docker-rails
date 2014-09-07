FROM       sbusso/base
MAINTAINER Stéphane Busso <stephane.busso@gmail.com>


# Install packages for building ruby
RUN apt-get update
RUN apt-get install -y --force-yes build-essential git wget

RUN wget http://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb
RUN dpkg -i erlang-solutions_1.0_all.deb

RUN apt-get update
RUN apt-get install -y erlang

# Install Elixir
WORKDIR /tmp/elixir-build
RUN git clone https://github.com/elixir-lang/elixir.git
WORKDIR elixir
RUN git checkout v1.0.0-rc1 && make && make install

# Clean up APT and temporary files when done
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
WORKDIR /home/deployer
