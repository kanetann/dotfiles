# rails application template
# rails-templates/facebook.rb at master · jm/rails-templates · GitHub <https://github.com/jm/rails-templates/blob/master/facebook.rb>
# Ruby on Rails Guides: Rails Application Templates <http://edgeguides.rubyonrails.org/rails_application_templates.html>

run "rm public/index.html"

%w( rspec rspec-rails guard-rails factory_girl_rails capybara rb-fsevent growl ).each do |pkg|
  gem pkg, :group => [:development, :test]
end

# environment 'config.action_mailer.default_url_options = {host: 'http://yourwebsite.example.com'}, env: 'production'

# scaffold
generate(:scaffold, "person name:string")
route "root to: 'people#index'"

# scaffold
run "bundle install"
generate("rspec:install")

run "guard init rspec"

rake("db:migrate")

run "cd #{Rails.application.class.parent_name}"

# git :init
# git add: "."
# git commit: %Q{ -m 'Initial commit' }

