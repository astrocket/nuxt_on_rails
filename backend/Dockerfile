FROM ruby:2.5

ARG UID
RUN adduser rails --uid $UID --disabled-password --gecos ""

RUN apt-get update && apt-get -y install curl nano

ENV APP /usr/src/app
RUN mkdir $APP
WORKDIR $APP

COPY Gemfile* $APP/
RUN bundle install -j3 --path vendor/bundle

COPY . $APP/

CMD ["bundle", "exec", "rails", "server", "-p", "8080", "-b", "0.0.0.0"]
