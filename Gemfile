# frozen_string_literal: true

source "https://rubygems.org"

gem "rails",                "5.1.1"

# Database Adapter
gem "pg",                   "0.20.0"

# Gems used by project
gem "autoprefixer-rails"
gem "bootstrap",            "~> 4.0.0.alpha6"
gem "figaro",               "~> 1.1.1"
gem "haml",                 "~> 5.0.1"
gem "kaminari",             '~> 1.0.1'

# Rails Defaults
gem "coffee-rails",         "~> 4.2"
gem "sass-rails",           "~> 5.0"
gem "uglifier",             ">= 1.3.0"

gem "jbuilder",             "~> 2.5"
gem "jquery-rails",         "~> 4.3.1"
gem "turbolinks",           "~> 5"

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 3.0"
# Use ActiveModel has_secure_password
# gem "bcrypt", "~> 3.1.7"

# Testing
group :test do
  gem "minitest"
  gem "simplecov", "~> 0.14.1", require: false
end

group :development, :test do
  # Adds support for Capybara system testing and selenium driver
  gem "capybara", "~> 2.13.0"
  gem "selenium-webdriver"
end

group :development do
  gem "web-console", ">= 3.3.0"
end
