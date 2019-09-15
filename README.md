# Photo gallery
Paginated gallery of images uploaded by account owners.

# Features
- Upload images from desktop
- Browse uploaded images - images of all owners are visible for everybody
- Guest cannot upload their own images - only person with account can upload images
- There is no option for registration - only owner of the app can create account
- Only person with account can upload images
- Person with account can also filter images to see only images uploaded by themselves
- Images are stored outside of the application (currently it's Cloudinary)

# Tech stack
- Ruby 2.6.3
- Rails 5.2.3
- Postgresql
- Carrierwave
- Cloudinary SDK

# Development info

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
