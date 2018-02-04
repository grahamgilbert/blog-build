FROM circleci/ruby:2.3
RUN git clone https://github.com/grahamgilbert/blog.git ~/blog \
    && apt-get -qq update \
    && apt-get install -y libgsl0ldbl libgsl0-dev \
    && cd ~/blog \
    && gem install bundler \
    && gem install html-proofer \
    && bundle install \
    && rm -rf ~/blog