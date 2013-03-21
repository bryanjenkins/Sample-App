source 'https://rubygems.org'

ruby '1.9.3', engine: 'jruby', engine_version: '1.7.1'

gem 'rails', '3.2.12'
gem 'bootstrap-sass', '2.0.4'
gem 'bcrypt-ruby', '3.0.1'
gem 'faker', '1.0.1'
gem 'will_paginate', '~> 3.0'
gem 'bootstrap-will_paginate', '0.0.6'
gem 'jquery-rails', '2.0.2'
gem 'devise'
gem 'sys-proctable', :git => 'git://github.com/djberg96/sys-proctable.git'
gem 'pdf-stamper', :git =>'git://github.com/bryanjenkins/pdf-stamper.git'

group :development, :test do
  gem 'activerecord-jdbcsqlite3-adapter'
  gem 'rspec-rails', '2.11.0'
  gem 'guard-rspec', '1.2.1'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '3.2.5'
  gem 'coffee-rails', '3.2.2'
  gem 'uglifier', '1.2.3'
end

group :test do
  gem 'capybara', '1.1.2'
  gem 'factory_girl_rails', '4.1.0'
  gem 'cucumber-rails', '1.2.1', :require => false
  gem 'database_cleaner', '0.7.0'
  # gem 'launchy', '2.1.0'
  # gem 'rb-fsevent', '0.9.1', :require => false
  # gem 'growl', '1.0.3'
end

group :production do
  gem 'activerecord-jdbcpostgresql-adapter'
end