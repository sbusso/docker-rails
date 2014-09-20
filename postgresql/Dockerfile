FROM       sbusso/base
MAINTAINER Stéphane Busso <stephane.busso@gmail.com>

# Add PostgreSQL Global Development Group apt source
RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main" > /etc/apt/sources.list.d/pgdg.list

# Add PGDG repository key
RUN wget -qO - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | apt-key add -

RUN apt-get update

# Install Ruby application dependencies
RUN apt-get install -y postgresql-9.3 postgresql-contrib-9.3

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

USER postgres

RUN    /etc/init.d/postgresql start &&\
    psql --command "CREATE USER docker WITH SUPERUSER PASSWORD 'docker';" &&\
    createdb -O docker docker


RUN echo "host all  all    0.0.0.0/0  md5" >> /etc/postgresql/9.3/main/pg_hba.conf

RUN echo "listen_addresses='*'" >> /etc/postgresql/9.3/main/postgresql.conf

EXPOSE 5432

# Add VOLUMEs to allow backup of config, logs and databases
VOLUME  ["/etc/postgresql", "/var/log/postgresql", "/var/lib/postgresql"]

# Set the default command to run when starting the container
CMD ["/usr/lib/postgresql/9.3/bin/postgres", "-D", "/var/lib/postgresql/9.3/main", "-c", "config_file=/etc/postgresql/9.3/main/postgresql.conf"]


# Clean up APT and temporary files when done
