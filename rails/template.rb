# rails application template
# rails-templates/facebook.rb at master · jm/rails-templates · GitHub <https://github.com/jm/rails-templates/blob/master/facebook.rb>
# Ruby on Rails Guides: Rails Application Templates <http://edgeguides.rubyonrails.org/rails_application_templates.html>

run "rm public/index.html"
environment '
config.generators do |g|
    g.fixture_replacement :factory_girl
end
'

# app server
gem 'unicorn'

# authentication, authorization
gem 'devise'
gem 'cancan'
gem 'audited'

# controller
gem 'action_args'

# view
gem 'slim-rails'
gem 'html2slim'
gem 'twitter-bootstrap-rails'
gem 'formtastic'
gem 'kaminari'
gem 'ransack'
gem 'thinreports-rails'
gem 'pdf-inspector'
gem 'chosen-rails'

# database
gem "acts_as_paranoid", "~> 0.4.1"

# configration
gem 'rails_config'

# seed data
gem "seed-fu"


gem_group :development, :test do
  # testing framework
  gem 'rspec-rails'
  gem 'capybara'

  # fixture
  gem 'factory_girl_rails'
  gem 'database_cleaner'

  # client notify
  gem 'terminal-notifier-guard'

  # coverage
  gem 'simplecov'

  # refactoring
  gem 'rubocop'
  gem 'rails_best_practices'

  # pry
  gem 'pry'
  gem 'pry-doc'
  gem 'pry-debugger' # binding.pry
  gem 'pry-rails'

  # deploy
  gem 'capistrano'
  gem 'capistrano-ext'
  gem 'capistrano_colors'

  # browser debug
  gem 'better_errors'
  gem 'binding_of_caller'

  # document generator
  gem 'sdoc'

  # useful gems 
  gem 'spork'
  gem 'guard'
  gem 'guard-bundler'
  gem 'guard-rspec'
  gem 'guard-spring'
  gem 'guard-rails'
  gem 'guard-livereload'
  gem 'rb-fsevent'
  gem 'rails-clean-logs'
  gem 'awesome_print'
  gem 'quiet_assets'
  gem 'annotate', :git => 'https://github.com/ctran/annotate_models'
  gem 'letter_opener'
end

gem_group :test do
  gem 'test_after_commit'
end

run "bundle install"

run "rails g rspec:install"
run "guard init rspec"
run "bundle exec spork --bootstrap"

run "cp ~/dotfiles/rails/.rspec .rspec"
run "cp ~/dotfiles/rails/spec/spec_helper.rb spec/spec_helper.rb"

# device
run "rails g devise:install"
run "rails g devise user"

# scaffold
generate(:scaffold, "article title:string content:text")
route "root to: 'articles#index'"

# database
run "rake db:migrate"
run "rake db:migrate RAILS_ENV=test"

generate("factory_girl:model", "article title:string content:text")

# and more
# add your controller 'before_filter :authenticate_user!' for device helpers.

