# Nuxt + Rails API Demo

Tutorial from : [link](https://medium.com/@fishpercolator/how-to-separate-frontend-backend-with-rails-api-nuxt-js-and-devise-jwt-cf7dd9da9d16)

```bash
docker-compose build
docker-compose run -u root backend bundle
docker-compose run client yarn
docker-compose run backend bundle exec rails db:create
docker-compose up
```

> Rails Console 접속하기
```bash
docker-compose run backend bash
bundle exec rails g whateveryouwant
```

> NPM 설치하기
```bash
docker-compose run client yarn add @some/library
```

## Issues
> docker 1.16 버전부터 bin/bundle 을 생성하고, 다른 binstub 에서도 참조하게 바뀐 문제.
[exec: \"rails\": exectuable...](https://medium.com/@luzioluna/i-love-this-f2277d15289)
[same issue above](https://github.com/docker-library/ruby/issues/211)
[explains](https://github.com/bundler/bundler/pull/6469#issuecomment-383235438)
