# puts eval($**'..').map{|k|a=[[:Fizz][k%3],[:Buzz][k%5]]*'';a==''?k:a}
puts (1..100).map{|k|a=[[:Fizz][k%3],[:Buzz][k%5]]*'';a==''?k:a}
