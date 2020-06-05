FROM ruby:2.6.3-alpine

# ENV
ENV https_proxy=http://atxproxy.us.int.sonichealthcare:8080
ENV http_proxy=http://atxproxy.us.int.sonichealthcare:8080

WORKDIR /usr/code/sweep_api
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN gem install bundler
RUN bundle install
CMD ["rails", "s"]
COPY . .