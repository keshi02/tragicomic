ARG RUBY_VERSION=ruby:3.2.3

FROM $RUBY_VERSION
ENV LANG ja_JP.UTF-8
ENV TZ Asia/Tokyo

ARG NODE_VERSION=20
LABEL fly_launch_runtime="tragicomic"

RUN curl -sL https://deb.nodesource.com/setup_${NODE_VERSION}.x | bash - \
&& wget --quiet -O - /tmp/pubkey.gpg https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
&& echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
&& apt-get update -qq \
&& apt-get install -y build-essential nodejs yarn postgresql-client vim libpq-dev

# ルートディレクトリを作成
RUN mkdir /app
WORKDIR /app

RUN gem install -N bundler

#ローカルのGemfileとGemfile.lockをコンテナ内にコピー
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

RUN bundle install

#ローカルの現在のディレクトリをコンテナ内にコピー
COPY . /app

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]