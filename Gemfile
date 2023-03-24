source 'https://rubygems.org'

ruby '3.0.2'

gem 'bootsnap', '>= 1.4.4', require: false
gem 'dotenv-rails'
gem 'jbuilder', '~> 2.7'
gem 'puma', '~> 5.0'
gem 'rails', '~> 6.1.5'
gem 'ransack'
gem 'redis'
gem 'rest-client'
gem 'sass-rails', '>= 6'
gem 'sidekiq'
gem 'sqlite3', '~> 1.4'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'webpacker', '~> 5.0'

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  # Debug
  gem 'pry-nav'
  gem 'pry-rails'

  # Quality assurance
  gem 'brakeman'
  gem 'reek'
  gem 'rubocop'
  gem 'rubocop-rails'
  gem 'rubocop-rspec'

  # RSpec
  gem 'parallel_tests'
  gem 'rspec-rails'
end

group :development do
  gem 'listen'
  gem 'rack-mini-profiler'
  gem 'solargraph', require: false
  gem 'spring'
  gem 'web-console'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'rexml'
  gem 'selenium-webdriver'
  gem 'webdrivers'

  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rails-controller-testing'
  gem 'rspec-sidekiq'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
  gem 'vcr'
  gem 'webmock'
end
