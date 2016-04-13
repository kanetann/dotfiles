#!/usr/bin/env ruby

def execute(cmd)
    p `#{cmd}`
end

uname = `uname`.chomp

# setup rbenv
execute "rm -rf ~/.rbenv"
execute "git clone git://github.com/sstephenson/rbenv.git ~/.rbenv"
execute "mkdir -p ~/.rbenv/plugins"
rbenv_install_command =  "cd ~/.rbenv/plugins; git clone git://github.com/sstephenson/ruby-build.git;"
rbenv_version = "2.1.10"
if uname == "Darwin" then
  execute "#{rbenv_install_command} CONFIGURE_OPTS=\"--with-openssl-dir=/usr/local/opt/openssl --with-readline-dir=/usr/local/opt/readline\" rbenv install #{rbenv_version}"
else
  execute "#{rbenv_install_command} rbenv install #{rbenv_version}"
end
execute "rbenv global #{rbenv_version}"
execute "rbenv rehash"

gems = %w{
  rbenv-rehash
  rails
  awesome_print
  pry
  pry-doc
  refe2
  tmuxinator
}
gems.each do |k|
  execute "gem install #{k}"
end

