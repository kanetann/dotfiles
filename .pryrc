# https://github.com/pry/pry/wiki/Customization-and-configuration

Pry.config.pager = true
Pry.config.editor = proc { |file, line| "vim #{file} +#{line}" }

Pry.commands.alias_command 'c', 'continue'
Pry.commands.alias_command 's', 'step'
Pry.commands.alias_command 'n', 'next'
Pry.commands.alias_command 'f', 'finish'
