require 'find'

Find.find(ARGV[0] || '.') do |f|
  if FileTest.file?(f)
    puts "--------------------------------------------------"
    puts "#{f}"
    puts "--------------------------------------------------"
    puts `cat #{f}`
    puts "\n\n\n\n\n\n\n\n\n\n"
  end
end
