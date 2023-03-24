source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.4'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.4'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

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
