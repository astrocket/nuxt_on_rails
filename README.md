# Nuxt + Rails API Demo

Tutorial from : [link](https://medium.com/@fishpercolator/how-to-separate-frontend-backend-with-rails-api-nuxt-js-and-devise-jwt-cf7dd9da9d16)

```bash
docker-compose build
docker-compose run -u root backend bundle
docker-compose run client yarn
docker-compose run backend bundle exec rails db:create
docker-compose up
```
