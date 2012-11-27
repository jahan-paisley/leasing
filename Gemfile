source 'http://rubygems.org'

gem 'rails', '3.2.9'
gem 'jquery-rails'
gem 'bootstrap-sass'
gem 'devise', '>= 2.1.2'
gem 'cancan', '>= 1.6.8'
gem 'rolify', '>= 3.2.0'
gem 'client_side_validations', :git => 'git://github.com/bcardarella/client_side_validations.git'
gem 'kaminari'
gem 'money-rails'
gem 'cocoon'
gem 'simple_form'
gem 'roo'
gem 'axlsx'
gem "draper"

#gem 'passenger'
#gem 'omniauth'
gem 'jalalidate'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :development, :test do
  gem 'spork'
  gem 'watchr'
  gem 'rspec-rails', '>= 2.12.0'
  gem 'factory_girl_rails', '>= 4.1.0', :require => false
  gem 'sqlite3'
  gem 'pry'
  gem 'pry-rails'
  gem 'pry-remote'
  gem 'pry-nav'
  gem 'debugger'
  gem 'plymouth'
end

gem 'nifty-generators', :group => [:development]

group :test do
  gem 'cucumber-rails', '>= 1.3.0', :require => false
  gem 'database_cleaner', '>= 0.9.1'
  gem 'launchy', '>= 2.1.2'
  gem 'capybara', '>= 2.0.1'
  gem 'email_spec' , '>= 1.4.0' 
end

group :production do
  gem 'pg'
  gem 'thin'
end