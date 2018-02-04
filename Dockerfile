FROM circleci/ruby:2.3
WORKDIR /tmp/blog-clone
USER root
RUN git clone https://github.com/grahamgilbert/blog.git /tmp/blog-clone \
    && apt-get -qq update \
    && apt-get install -y libgsl0ldbl libgsl0-dev \
    && gem install bundler \
    && gem install html-proofer \
    && bundle install \
    && rm -rf /tmp/blog-clone
USER circleci