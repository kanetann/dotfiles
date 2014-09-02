# rails application template

# gem 'activerecord-import'
# gem 'acts_as_commentable'
# gem 'acts_as_paranoid'
# gem 'carrierwave'
# gem 'devise'
# gem 'impressionist'
# gem 'kaminari'
# gem 'lazy_high_charts'
# gem 'mini_magick'
# gem 'mysql2'
# gem 'pdf-inspector'
# gem 'ransack'
# gem 'simple_form'
# gem 'socialization'
# gem 'thinreports-rails'
# gem 'turnout'
# gem 'ui_datepicker-rails3'
# gem 'unicorn'

gem_group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'bullet'
  # gem 'capistrano'
  # gem 'capistrano-bundler'
  # gem 'capistrano-rbenv'
  # gem 'capistrano-unicorn'
  # gem 'capistrano3-unicorn'
  gem 'factory_girl_rails'
  gem 'guard'
  gem 'guard-bundler'
  gem 'guard-delayed'
  gem 'guard-livereload'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'hirb'
  gem 'hirb-unicode'
  gem 'letter_opener'
  gem 'pry-byebug'
  gem 'quiet_assets'
  gem 'rack-mini-profiler'
  gem 'rails-erd'
  gem 'rails-footnotes'
  gem 'rails_best_practices'
  gem 'rspec-rails'
  gem 'rubocop'
  gem 'simplecov'
  gem 'what_methods'
end

gem_group :test do
  gem 'database_rewinder'
end

run "bundle install --path vendor/bundle"
run "bundle exec guard init"
run "bundle exec rake db:migrate"
run "bundle exec rake db:test:prepare"
