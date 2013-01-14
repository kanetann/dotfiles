# rails application template
# rails-templates/facebook.rb at master · jm/rails-templates · GitHub <https://github.com/jm/rails-templates/blob/master/facebook.rb>
# Ruby on Rails Guides: Rails Application Templates <http://edgeguides.rubyonrails.org/rails_application_templates.html>

run "rm public/index.html"
environment '
config.generators do |g|
    g.fixture_replacement :factory_girl
end
'


gem 'devise'
gem 'cancan'
gem 'twitter-bootstrap-rails'
gem 'unicorn'
gem 'formtastic'
gem 'kaminari'
gem 'resque'

gem_group :development, :test do
  # testing framework
  gem 'rspec-rails'
  gem 'capybara'

  # fixture
  gem 'factory_girl_rails'
  gem 'database_cleaner'

  # client notify
  gem 'growl'

  # coverage
  gem 'simplecov'

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

  # useful gems 
  gem 'spork'
  gem 'guard'
  gem 'guard-bundler'
  gem 'guard-rspec'
  gem 'guard-spork'
  gem 'guard-rails'
  gem 'guard-livereload'
  gem 'rb-fsevent'
  gem 'rails-clean-logs'
  gem 'awesome_print'
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

