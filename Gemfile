source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.3'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use serializer to return correct format to ember_cli
gem 'active_model_serializers'

# Use Unicorn as the app server
 gem 'unicorn'

# Use Thin for development
gem 'thin', group: :development

# Use Capistrano for deployment
gem 'capistrano'
gem 'capistrano-rails'
gem 'capistrano-bundler'
gem 'rvm1-capistrano3', require: false

# we use ember-cli for our frontend-app
gem "ember-cli-rails"

group :development, :test do
  # Call 'binding.pry' anywhere in the code to stop execution and get a debugger console
  gem 'pry'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Pretty print objects
  gem 'awesome_print'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

# Cucumber for BDD
group :test do
  gem 'cucumber-rails', :require => false
  # database_cleaner is not required, but highly recommended
  gem 'database_cleaner', '<= 1.0.1'
  gem 'factory_girl_rails'
  gem 'poltergeist'
  gem 'selenium-webdriver'
  gem 'headless'
  gem 'email_spec'
  gem 'capybara-screenshot'
end

# For running tests parallel
gem "parallel_tests", :group => :development

# We use devise (https://github.com/plataformatec/devise) for authentication and authorization
gem 'devise'

# We use paperclip (https://github.com/thoughtbot/paperclip#installation) to manage attachements to an object
gem "paperclip", "~> 4.3"
