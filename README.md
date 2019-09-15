# Photo gallery

## Development environment setup
```
bundle install
rails db:create
rails db:create RAILS_ENV=test
rails db:schema:load
```

### Configuration
Check `application.yml.example` file in `config` directory to see which ENV variables need to be specified in order to run application properly.

Proper values need to be placed in your own `application.yml` file, which is not pushed into repository.

## Development server
```
rails s
```

## Launch tests
```
rspec
```
