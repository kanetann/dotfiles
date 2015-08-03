# rails application template
# rails new [app_name] -m ~/dotfiles/template.rb

@app_name = app_name
run 'rm README.rdoc'
gsub_file '.gitignore', /^config\/initializers\/secret_token.rb$/, ''
gsub_file '.gitignore', /config\/secret.yml/, ''

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
gem 'autoprefixer-rails'
gem "rack-dev-mark"

gem_group :development do
  # gem 'capistrano'
  # gem 'capistrano-bundler'
  # gem 'capistrano-rbenv'
  # gem 'capistrano-unicorn'
  # gem 'capistrano3-unicorn'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'bullet'
  gem 'rails-flog', :require => "flog"
  gem 'coffeelint'
  gem 'guard'
  gem 'guard-bundler'
  gem 'guard-delayed'
  gem 'guard-livereload'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'hirb'
  gem 'hirb-unicode'
  gem 'letter_opener'
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'quiet_assets'
  gem 'rack-mini-profiler'
  gem 'rails-erd'
  gem 'rails-footnotes'
  gem 'rails_best_practices'
  gem 'rspec-rails', group: 'test'
  gem 'rubocop'
  gem 'scss-lint'
  gem 'what_methods'
  gem 'did_you_mean', group: 'test'
end

gem_group :test do
  gem 'database_rewinder'
  gem 'simplecov'
end

run "bundle install --path vendor/bundle"
run "bundle exec guard init"
run "bundle exec rake db:migrate"
run "bundle exec rake db:test:prepare"
