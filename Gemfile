source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.8'

gem 'bootstrap-sass', '2.3.2.0'
gem 'sprockets', '2.11.0'
gem 'faker', '1.1.2'
gem 'will_paginate', '3.0.4'
gem 'bootstrap-will_paginate', '0.0.9'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.2'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyrhino'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :test do
  gem 'selenium-webdriver', '2.35.1'
  gem 'capybara', '2.1.0'
end
group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end
group :production do
  gem 'activerecord-jdbcpostgresql-adapter'
  gem 'rails_12factor', '0.0.2'
end

#Amazon web service for poto storage

group :development, :test do
# Use jdbcsqlite3 as the database for Active Record
  gem 'activerecord-jdbcsqlite3-adapter'
  gem 'rspec-rails', '2.13.1'
  gem 'factory_girl_rails', '4.2.0'
end
#for heroku
#ruby=jruby-1.7.11

ruby '1.9.3', engine: 'jruby', engine_version: '1.7.11'
gem 'devise'

gem "guard", "~>1.8.3"
gem "guard-rspec"
gem "guard-jruby-rspec", github: 'jkutner/guard-jruby-rspec'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'
# Paperclip for photo management in the db
gem "paperclip", "~> 4.2"
# s3 integration for storage of trashpicer photos.
gem 'aws-sdk'

# adding maps for rails and checkin integration
gem 'gmaps4rails'
gem 'geocoder'
# Use Capistrano for deployment
# gem 'capistrano', group: :development
