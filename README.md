# Nuxt + Rails API Demo

Tutorial from : [link](https://medium.com/@fishpercolator/how-to-separate-frontend-backend-with-rails-api-nuxt-js-and-devise-jwt-cf7dd9da9d16)

> 도커 이미지 빌드 및 컨테이너 시작
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

> Rails bundle install
```bash
docker-compose run -u root backend bundle
```

> NPM 설치하기
```bash
docker-compose run client yarn add @some/library
```

> Nano 에디터 설치하기 (update랑 package 설치를 한방에 해야함)
```bash
apt-get update && apt-get install curl nano
```

## Issues
> docker 1.16 버전부터 bin/bundle 을 생성하고, 다른 binstub 에서도 참조하게 바뀐 문제.
[exec: \"rails\": exectuable...](https://medium.com/@luzioluna/i-love-this-f2277d15289)
[same issue above](https://github.com/docker-library/ruby/issues/211)
[explains](https://github.com/bundler/bundler/pull/6469#issuecomment-383235438)
[docker에서 nano 에디터 설치 에러](https://stackoverflow.com/questions/27273412/cannot-install-packages-inside-docker-ubuntu-image)
[5.2 Rails secret 관련해서](https://medium.com/@fishpercolator/how-to-separate-frontend-backend-with-rails-api-nuxt-js-and-devise-jwt-cf7dd9da9d16)