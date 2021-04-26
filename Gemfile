# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

ruby '2.6.3'

gem 'autoprefixer-rails'

gem 'bootsnap', require: false
# gem "honeybadger"
gem 'pg'
gem 'puma'
gem 'rack-canonical-host'
gem 'rails', '6.0.2'
gem 'recipient_interceptor'
gem 'sassc-rails'
# gem "skylight"
gem 'pry-rails'
gem 'sprockets', '>= 3.0.0'
gem 'title'
gem 'tzinfo-data', platforms: %i[mingw x64_mingw mswin jruby]
gem 'webpacker'

group :development do
  gem 'foreman'
  gem 'letter_opener'
  gem 'listen'
  gem 'rack-mini-profiler', require: false
  gem 'rubocop'
  gem 'rubocop-rails'
  gem 'spring'
  gem 'web-console'
end

group :development, :test do
  gem 'awesome_print'
  gem 'bundler-audit', '>= 0.5.0', require: false
  gem 'dotenv-rails'
  gem 'pry-byebug'
end

group :test do
  gem 'formulaic'
  gem 'launchy'
  gem 'simplecov', require: false
  gem 'timecop'
  gem 'webmock'
end

gem 'suspenders', group: %i[development test]

gem 'activeadmin'
gem 'bootstrap', '~> 4.4.1'
gem 'bourbon', '>= 5.0.1'
gem 'bullet', group: %i[development test]
gem 'capybara-selenium', group: :test
# gem 'chromedriver-helper', group: :test
gem 'bundler', '>= 2.1.2'
gem 'devise'
gem 'factory_bot_rails', group: %i[development test]
gem 'high_voltage'
gem 'inline_svg'
gem 'jquery-rails'
gem 'json'
gem 'neat', '>= 3.0.1'
gem 'oj'
gem 'rack-timeout', group: :production
gem 'rspec'
gem 'rspec-core'
gem 'rspec-rails', '~> 3.6', group: %i[development test]
gem 'shoulda-matchers', group: :test
gem 'sidekiq'
gem 'sidekiq-scheduler'
gem 'simple_form'
gem 'spring-commands-rspec', group: :development
gem 'webdrivers', group: :test
