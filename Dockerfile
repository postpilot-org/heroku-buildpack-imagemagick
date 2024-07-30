FROM heroku/heroku:20-build

WORKDIR /app

COPY . /buildpack
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /buildpack/bin/* /entrypoint.sh

ENV STACK=heroku-20

RUN /buildpack/bin/compile /app /cache /env

ENTRYPOINT ["/entrypoint.sh"]
