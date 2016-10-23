FROM ruby:2.3.0
MAINTAINER ryanfox1985 <wolf.fox1985@gmail.com>

# Update and upgrade
RUN apt-get -q update

# Install packages
RUN apt-get install -qy build-essential libsqlite3-dev nodejs-legacy npm

ENV APP_HOME /var/www
ENV RAILS_ENV test

# Prepare folders
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

COPY Gemfile      $APP_HOME/Gemfile
COPY Gemfile.lock $APP_HOME/Gemfile.lock

# Install gems
RUN bundle install

# Add the rails app
COPY . $APP_HOME

# Compile assets
RUN rake assets:precompile

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 3000
CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
