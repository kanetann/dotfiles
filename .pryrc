# https://github.com/pry/pry/wiki/Customization-and-configuration

Pry.config.pager = false
Pry.config.editor = proc { |file, line| "vim #{file} +#{line}" }

