FROM sbusso/prerails

# Separate Gemfile ADD so that `bundle install` can be cached more effectively
ADD . /www
WORKDIR /www

# RUN mkdir -p /var/bundle

RUN cd /www && bundle install

#--path /var/bundle

# Add application source


#ENV PATH /var/bundle/ruby/2.1.0/bin:$PATH
#ENV GEM_PATH /var/bundle/ruby/2.1.0/gems:$HOME/.gems:/usr/local/lib/ruby/gems/2.1.0

# RUN bundle exec rails new . --git option and a --database=postgresql --skip-gemfile -q -B

# fig run web rails new . --git option and a --database=postgresql --skip-gemfile -q -B
