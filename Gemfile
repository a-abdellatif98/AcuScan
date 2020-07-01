# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'
gem 'rails', '~> 6.0.2', '>= 6.0.2.1'
gem 'pg'
gem 'puma', '~> 4.1'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'devise'
gem 'image_processing', '~> 1.2'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'bootstrap'
gem 'bundler-audit', '~> 0.6.1'
gem 'rubocop-performance', require: false
gem 'rubocop-rails', require: false
gem 'bullet', group: 'development'
gem 'ruby-growl'
gem 'ruby_gntp'
gem "uniform_notifier"

# gem 'uniq_number_id'
# gem 'redis', '~> 4.0'
# gem 'bcrypt', '~> 3.1.7'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
