# rails application template
# rails-templates/facebook.rb at master · jm/rails-templates · GitHub <https://github.com/jm/rails-templates/blob/master/facebook.rb>
# Ruby on Rails Guides: Rails Application Templates <http://edgeguides.rubyonrails.org/rails_application_templates.html>

run "rm public/index.html"
run "cp public/favicon.ico app/assets/images/."
environment '
config.generators do |g|
    g.fixture_replacement :factory_girl
end
'

# app server
# gem 'unicorn'

# authentication, authorization
gem 'devise'
# gem 'cancan'
# gem "audited-activerecord", "~> 3.0"

# controller
# gem 'action_args'

# view
# gem 'slim-rails'
# gem 'html2slim'

gem 'therubyracer'
gem 'less-rails'
gem 'twitter-bootstrap-rails'

# gem 'formtastic'
gem 'kaminari'
gem 'ransack'
# gem 'thinreports-rails'
# gem 'pdf-inspector'
# gem 'chosen-rails'

# chart
# gem 'chartkick'
# gem 'groupdate'

# bread crumb
# gem 'crummy'

# i18n
# gem 'rails-i18n'

# database
gem "acts_as_paranoid", "~> 0.4.1"

# configration
# gem 'rails_config'

# seed data
# gem "seed-fu"

# gem_group :development, :test do
#   gem 'factory_girl_rails'
#   gem 'rubocop'
#   gem 'rails_best_practices'
# end

gem_group :development do

  # gem 'terminal-notifier-guard'

  gem 'pry'
  gem 'pry-doc'
  # binding.pry
  gem 'pry-debugger'
  gem 'pry-rails'

  # # deploy
  # gem 'capistrano'
  # gem 'capistrano-ext'
  # gem 'capistrano_colors'

  # browser debug
  gem 'better_errors'
  gem 'binding_of_caller'

  # # document generator
  # gem 'sdoc'

  # useful gems 
  # gem 'spork'
  gem 'guard'
  # gem 'guard-bundler'
  gem 'guard-rspec'
  # gem 'guard-spring'
  # gem 'guard-rails'
  gem 'guard-livereload'
  gem 'rb-fsevent'
  gem 'rails-clean-logs'
  gem 'awesome_print'
  gem 'quiet_assets'
  # gem 'annotate', :git => 'https://github.com/ctran/annotate_models'
  # gem 'rails-erd'
  # gem 'letter_opener'

  # gem 'magic-commenter'
end

gem_group :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
#   # gem 'capybara'
#   gem 'test_after_commit'
#   gem 'timecop'
#   # gem 'parallel_tests'
#   gem 'database_cleaner'
#   gem 'simplecov'
end

gem_group :development, :test do
  gem 'spring'
end

run "bundle install --path vendor/bundle"

# rake "db:drop"
# rake "db:create"
run "bundle exec rake db:drop"
run "bundle exec rake db:create"

# devise 
generate "devise:install"
generate "devise User"

# cancan

# audited
# generate "audited:install"
# gsub_file 'app/models/user.rb', /class User < ActiveRecord::Base/, "class User < ActiveRecord::Base\n  audited"

# action_args
# slim-rails
# html2slim

# therubyracer
# less-rails
# twitter-bootstrap-rails
generate "bootstrap:install less"
generate "bootstrap:layout application fluid"

# # formtastic
# generate "formtastic:install"

# kaminari
# ransack
# thinreports-rails
# pdf-inspector
# chosen-rails
# chartkick
# groupdate
# crummy
# rails-i18n
# acts_as_paranoid
# run "rails g migration AddDeletedAtToUsers deleted_at:datetime"
# run 'gsed -i -e "2i   acts_as_paranoid" app/models/user.rb'

# rails_config
# generate 'rails_config:install'

# seed-fu
# factory_girl_rails
# rubocop
# $ rubocop app spec lib/something.rb

# rails_best_practices
# terminal-notifier-guard
# pry
# pry-doc
# pry-debugger
# pry-rails


# TODO: rails3 application template
# capistrano
# capistrano-ext
# capistrano_colors
# run "bundle exec capify ."

# better_errors
# binding_of_caller

# sdoc
# $ sdoc projectdir

# spork
# guard
# run "guard init"
run "bundle exec guard init"

# guard-bundler
# run "guard init bundler"

# guard-rspec
run "guard init rspec"
 
# # guard-spring
# run "guard init spring"
# 
# # guard-rails
# run "guard init rails"
# 
# # guard-livereload
# run "guard init livereload"
# 
# # rb-fsevent
# # rails-clean-logs
# # awesome_print
# # quiet_assets

# # annotate
# # $ cd /path/to/app
# # $ annotate
# generate "annotate:install"
# 
# # letter_opener
# # magic-commenter
# rspec-rails
generate "rspec:install"

# run "bundle exec spork --bootstrap"
# run "cp ~/dotfiles/rails/.rspec .rspec"
# run "cp ~/dotfiles/rails/spec/spec_helper.rb spec/spec_helper.rb"
# 
# capybara
# test_after_commit
# timecop
# parallel_tests
# database_cleaner
# simplecov

# http://memo.yomukaku.net/entries/XUogyWh
gsub_file 'config/application.rb', /  end/, "config.generators.stylesheets = false\n  end"
gsub_file 'config/application.rb', /  end/, "config.generators.javascripts = false\n  end"
gsub_file 'config/application.rb', /  end/, "config.generators.helper = false     \n  end"

# scaffold
generate(:controller, "dashboard index")
route "root to: 'dashboard#index'"
gsub_file 'app/controllers/dashboard_controller.rb', /def index/, "before_filter :authenticate_user!\n  def index"

# database
# rake "db:migrate"
run "bundle exec rake db:migrate"
run "bundle exec rake db:test:prepare"
# rake "db:migrate RAILS_ENV=test"

# git
git :init
run "wget -O .gitignore https://raw.github.com/github/gitignore/master/Rails.gitignore"
git :add => '.'
git :commit => "-aqm 'first commit.'"

# devise/application.html.erb
# <% if user_signed_in? %>
#    <%= link_to(destroy_user_session_path) do %>
#      Sign Out
#    <% end %>
#  <% else %>
#    <%= link_to(new_user_session_path) do %>
#      Sign In
#    <% end %>
#  <% end %>
