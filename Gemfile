# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gem 'puma', '~> 4.3.11'

gem 'sinatra', '~> 2.0.0', require: 'sinatra/base'
gem 'sinatra-contrib', '~> 2.0.0'

gem 'i18n', '~> 1.8.2'

gem 'dry-validation', '~> 1.5.0'

gem 'pry', '~> 0.13.0'

group :test do
  gem 'rspec', '~> 3.9.0'
  gem 'rack-test', '~> 1.1.0'
end
