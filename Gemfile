source 'https://rubygems.org'

# Globals dependencies
gem 'rails', '3.2.2'
gem 'migrant'


# Assets dependencies
group :assets do
  gem 'jquery-rails'
  gem 'sass-rails',     '~> 3.2.3'
  gem 'uglifier',       '>= 1.0.3'
  gem 'therubyracer'
  gem 'compass-rails',  '~> 1.0.1'
  gem 'bootstrap-sass', '~> 2.0.1'
  gem 'fancybox-rails'
  gem 'rails-i18n'
  gem 'carrierwave',     '>= 0.6.2'
  gem 'rmagick'
  gem 'zippy',          '~> 0.2.1'
end

# Production environment dependencies
group :production, :staging do
  gem "mysql"
end

# Development environment dependencies (also needed by test environement)
group :development do
  gem 'sqlite3'
end

group :test do
  gem 'rspec'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'capybara'
end

# Guard dependencies
group :guard do
  gem 'guard'

  gem 'guard-shell'
  gem 'guard-bundler'
  gem 'guard-rspec'
  gem 'guard-spork'
#  gem 'guard-jasmine'
  gem 'guard-pow'
  gem 'guard-livereload'

  gem 'rb-readline'

  gem 'rb-fsevent', require: false
  gem 'ruby_gntp',  require: false
end