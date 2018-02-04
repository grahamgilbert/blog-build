FROM circleci/ruby:2.3
WORKDIR /tmp/blog
RUN git clone https://github.com/grahamgilbert/blog.git /tmp/blog \
    && sudo apt-get -qq update \
    && sudo apt-get install -y libgsl0ldbl libgsl0-dev \
    && gem install bundler \
    && gem install html-proofer \
    && bundle install \
    && rm -rf /tmp/blog