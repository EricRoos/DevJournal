source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.0"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.4", ">= 7.0.4.3"

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

# Use mysql as the database for Active Record
gem "mysql2", "~> 0.5"

# Use the Puma web server [https://github.com/puma/puma],
gem "puma", "~> 5.0"

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

# Use Tailwind CSS [https://github.com/rails/tailwindcss-rails]
gem "tailwindcss-rails"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Sass to process CSS
# gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"
  gem "capistrano", "~> 3.10", require: false
  gem "capistrano-rails", "~> 1.6", require: false
  gem "capistrano-bundler", require: false
  gem 'capistrano3-puma', github: "seuros/capistrano-puma"
  #gem "capistrano/rails/migrations", require: false

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end


gem "factory_bot_rails", "~> 6.2", :groups => [:test, :development]
gem "rspec-rails", "~> 6.0", :groups => [:test, :development]

gem "devise", "~> 4.9"

gem "omniauth", "~> 2.1"

gem 'omniauth-github', github: 'omniauth/omniauth-github', branch: 'master'

gem "dotenv-rails", "~> 2.8"

gem "omniauth-rails_csrf_protection", "~> 1.0"

gem "capybara", "~> 3.39", :group => :test

gem "guard", "~> 2.18", :groups => [:development, :test]
gem "guard-rspec", "~> 4.7", :groups => [:development, :test]
gem "guard-livereload", "~> 2.5", :groups => [:development, :test]

gem "pundit", "~> 2.3"

gem "ed25519", "~> 1.3", :group => :development

gem "bcrypt_pbkdf", "~> 1.1", :group => :development


gem "dalli", "~> 3.2"

gem "connection_pool", "~> 2.4"
