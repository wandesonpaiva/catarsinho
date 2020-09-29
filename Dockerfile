FROM ruby:2.7.1

RUN apt-get update -qq --fix-missing && apt-get install -y build-essential libpq-dev nodejs npm
RUN apt-get install -y unzip xvfb libxi6 libgconf-2-4 default-jdk
RUN npm install -g yarn


# Add the rails app
RUN mkdir -p /home/app/webapp/tmp/pids
WORKDIR /home/app/webapp
ADD . /home/app/webapp

# Create entrypoint
# COPY ./docker-entrypoint.sh /
# RUN chmod +x /docker-entrypoint.sh
# ENTRYPOINT ["/docker-entrypoint.sh"]

ENV BUNDLE_PATH=/bundle \
    BUNDLE_BIN=/bundle/bin \
    GEM_HOME=/bundle

ENV PATH="${BUNDLE_BIN}:${PATH}"
RUN gem install bundler:2.1.4
