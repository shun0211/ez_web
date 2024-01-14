FROM --platform=amd64 ruby:3.2.2

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
  && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
  && apt-get update \
  && curl -fsSL https://deb.nodesource.com/setup_14.x | bash \
  && apt-get install -y nodejs npm cron \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && mkdir /ez_web

RUN npm install --global yarn

WORKDIR /ez_web
COPY Gemfile /ez_web/Gemfile

COPY Gemfile.lock /ez_web/Gemfile.lock

RUN bundle install

COPY . /ez_web

COPY entrypoint.sh /usr/bin/

RUN chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]