source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.3"

gem "rails", "~> 5.2.3"
gem "pg", ">= 0.18", "< 2.0"
gem "puma", "~> 4.3"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "turbolinks", "~> 5"
gem "bootsnap", ">= 1.1.0", require: false
gem "pry", "~> 0.12.2"
gem "pry-rails", "~> 0.3.9"
gem "faker", "~> 2.3"
gem "devise", "~> 4.7", ">= 4.7.1"
gem "carrierwave", "~> 1.3", ">= 1.3.1"
gem "cloudinary", "~> 1.11", ">= 1.11.1"
gem "will_paginate", "~> 3.1", ">= 3.1.8"

group :development, :test do
  gem "figaro", "~> 1.1", ">= 1.1.1"
  gem "rspec-rails", "~> 3.8", ">= 3.8.2"
  gem "factory_bot_rails", "~> 5.0", ">= 5.0.2"
  gem "shoulda-matchers", "~> 4.1", ">= 4.1.2"
  gem "database_cleaner", "~> 1.7"
  gem "simplecov", "~> 0.17.0"
end

group :development do
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "letter_opener", "~> 1.7"
end
