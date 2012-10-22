source 'https://rubygems.org'

gem 'rails', '3.2.8'
gem 'geocoder'
gem 'jquery-rails'
gem "bootstrap-sass", ">= 2.1.0.0"
gem "devise", ">= 2.1.2"
gem "cancan", ">= 1.6.8"
gem "rolify", ">= 3.2.0"
#gem 'passenger'
#gem 'omniauth'
gem 'jalalidate'
gem 'client_side_validations'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem "rspec-rails", ">= 2.11.0", :group => [:development, :test]
gem 'debugger', group: [:development, :test]
gem "factory_girl_rails", ">= 4.0.0", :group => [:development, :test]
gem 'sqlite3', :group => [:development, :test]
gem 'nifty-generators', :group => [:development]

group :test do
  gem "cucumber-rails", ">= 1.3.0", :require => false
  gem "database_cleaner", ">= 0.8.0"
  gem "launchy", ">= 2.1.2"
  gem "capybara", ">= 1.1.2"
  gem "email_spec", ">= 1.2.1"  
end

group :production do
  gem 'pg'
  gem 'thin'
end