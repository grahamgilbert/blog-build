FROM ruby:2.3-jessie
WORKDIR /tmp/blog
USER root
RUN git clone https://github.com/grahamgilbert/blog.git /tmp/blog \
    && apt-get -qq update \
    && apt-get install -y libgsl0ldbl libgsl0-dev \
    && gem install bundler \
    && gem install html-proofer \
    && bundle install