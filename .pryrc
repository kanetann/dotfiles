# https://github.com/pry/pry/wiki/Customization-and-configuration

Pry.config.pager = true
Pry.config.editor = proc { |file, line| "vim #{file} +#{line}" }

