# library _builtin (Ruby 3.3 リファレンスマニュアル)
# https://docs.ruby-lang.org/ja/latest/library/_builtin.html
# Integer, String, Array, Hash, Enumerator

# class Integer (Ruby 3.3 リファレンスマニュアル)
# https://docs.ruby-lang.org/ja/latest/class/Integer.html

i = 100
i % 7
1 & 1
2 & 3
3 & 4
2 * 3
2 ** 3
10 ** 8
3 + 4
3 - 4
-10
7 / 2
# begin
#   2 / 0
# rescue ZeroDivisionError => e
#   puts e
# end
1 <= 2
2 ^ 3
-12345.abs
42.allbits?(42)
0b1010_1010.allbits?(0b1000_0010)
42.anybits?(42)
0b1010_1010.anybits?(0b1000_0010)
(-2**12-1).bit_length
(-18).ceil(-1)
5.ceildiv(3)
16.digits
16.digits(16)
160.digits(16)
0.upto(i).sum
i.downto(0).sum
# 0.upto(40) { |n| puts (n % 3 == 0 || n.to_s.include?('3')) ? 10000 : n }
i.even?
i.odd?
i.gcd(8)
i.gcdlcm(8)
10.to_s(8)
10.to_s(16)
35.to_s(36)
26.to_s(26)
i.next
i.succ
i.pred
25.round(-1, half: :up)
25.round(-1, half: :down)
25.round(-1, half: :even)
35.round(-1, half: :up)
35.round(-1, half: :down)
35.round(-1, half: :even)
i.size
# 3.times { puts 'Hello, World!' }
-18.truncate(-1)

# class Numeric (Ruby 3.3 リファレンスマニュアル)
# https://docs.ruby-lang.org/ja/latest/class/Numeric.html

3.step(by: 2, to: 10) { |n| puts n }

# class string (ruby 3.3 リファレンスマニュアル)
# https://docs.ruby-lang.org/ja/latest/class/string.html

s = 'internationalization'
s * 0
s * 1
s * 2
s * 3
s[0..4]
s[6..10]
'%s' % s[0..4]
'%s ::: %s' % [ s[0..4], s[6..10] ]
'str' + 'ing'
s.concat 'xxx'
s << 'yyy'
s << 65

s = 'internationalization'
s.concat 'bar', 'baz'
s =~ /inter/
s =~ /not/

s = 'internationalization'
s[2]
s[2] == ?t
s[2] == ?a
s[-1]
s[3]
s[-4]

s[2, 100]
s[/inter/]
$~.begin(0)
'def getcnt(line)'[ /def\s+(\w+)/, 1 ]   # => 'getcnt'
s[2..1]
s[2..2]
s[2..3]
s[2..4]
s[2..-1]
s[3..-1]
s[5..2]
s[-3..2]
s[-4..2]
s[-5..2]
s[1, 4] = '!!'
s
s = 'internationalization'
s[1, 18] = '18'
s

s = 'internationalization'
s['inter'] = '!!'
s

s = 'def exec(cmd)'
s[/def\s+(\w+)/, 1] = 'preprocess'
s

s = 'foobar'
s[/(?<foo>[a-z]..)(?<bar>[a-z]..)/, 'foo'] = 'baz'
s

s = 'internationalization'
s[/inter../] = '!!'
s

s = 'internationalization'
s.ascii_only?

s.byteindex('t', -1)
s.byteindex('n', 1)
s.byterindex('n', -1)
s.bytes
s.each_byte do |byte|
  byte
end

s.size
s.bytesize
s.byteslice(-3, 2)
s.byteslice(2..4)
s.capitalize
s.downcase
s.upcase
s.swapcase
s.casecmp('abcdef')
s.casecmp?('abcdef')
s.center(100, '*')
s.chars
# s.each_char { |c|  print c, ' ' }

s = 'internationalization\r\n'
s.chomp
s.chomp('\n')
s.chomp('\r\n')
s.chomp('')

s = 'internationalization'
s.chop
s.chop.chop
s.chop.chop.chop

s.delete_suffix('tion')
s.delete_suffix('tio')

s.chr
s.chop.chop
s.clear
s.codepoints
s.each_codepoint.to_a
s.count('n')

s = 'internationalization'
format '  %s  ', s
s.gsub 'inter', 'outer'
s.reverse
s.split('')
true if s =~ /i/
true if s[?i]
s.count 'n'
s.chars
s.chars.reverse.join
# s.chars.each { |c| print c.upcase }
s.chars.map(&:upcase)
s.ljust(1)
s.chars.map(&:ord)
s.chars.map(&:ord).sum
s.chars.select{|c| c == 'n'}
s.chars.shuffle

s = 'internationalization'
s.delete('inter')
s.delete_prefix('inter')
s.delete_suffix('tion')

s.each_line do |line|
  line
end

s.empty?
s.end_with?('tion')
s.eql?('internationalization')
s.getbyte(0)
s.gsub(/inter/, 'outer')
s.gsub(/[inter]/) { $&.upcase }
s.gsub(/[inter]/) { regexp.last_match(0).upcase }
s.gsub(/n/) {|s| s.upcase }
s.gsub(/n/) {$&.upcase }
s.hash
('inter' + 'nationalization').hash == s.hash
'ff'.hex
s.include? 'inter'
s.index 'inter'
s.insert(3, 'inter')

puts (1..10).to_a

s = 'internationalization'
puts s.inspect
puts s.intern
puts s.length
puts s.size
puts s.lines
puts s.lines(chomp: true)
puts s.ljust(100, '*')
puts s.lstrip

s = 'internationalization'
puts s.match('(.)\1')
puts s.match(/(.)\1/)[0]
puts s.match('io')

puts 'hoge hige hege bar'.match('h.ge', 0)
puts 'hoge hige hege bar'.match('h.ge', 1)
puts 'hoge hige hege bar'.match('h.ge', 2)

puts 'ruby'.match?(/r.../)
puts 'aa'.succ
puts '88'.succ.succ.next
puts '.'.succ

puts '010'.oct
puts 'a'.ord
puts 'aa'.ord

puts 'internationalization'.partition('n')
puts 'internationalization'.rpartition('n')
puts 'internationalization'.split('n')
puts 'internationalization'.prepend('hello ')

puts 'internationalization'.replace 'hello'

puts 'internationalization'.reverse
puts 'internationalization'.index('io', 1)
puts 'internationalization'.rindex('io', -1)

puts 'internationalization'.rjust(100, '*')
puts 'internationalization'.rstrip
puts 'internationalization'.scan(/../)
'internationalization'.scan(/../).each { |key| puts key }
puts 'internationalization'.scan(/n/)

s = 'sunday'
s.setbyte(0, 77)
s.setbyte(-5, 111)
puts s

s = 'this is a string'
puts s.slice!(2)
puts s.slice!(3..6)
puts s.slice!(/s.*t/)
puts s.slice!('r')
puts s

puts "   a \t  b \n  c".split(/\s+/)
puts "   a \t  b \n  c".split

puts '1-10,20'.split(/([-,])/)
puts 'hi there'.split(/\s*/).join(':')
puts 'hi there'.split(/\s*/) * ?:
puts 'hi there'.split(//).join(':')
puts 'a,b,c,,,'.split(/,/, 0)
puts 'a,b,c,,,'.split(/,/)
puts 'a,b,c,d,e'.split(/,/, 1)
puts 'a,b,c,d,e'.split(/,/, 2)
puts 'a,b,c,d,e'.split(/,/, 3)
puts 'a,b,c,d,e'.split(/,/, 4)
puts 'a,b,c,d,e'.split(/,/, 5)
puts 'a,b,c,d,e'.split(/,/, 6)
puts 'a,b,c,d,e'.split(/,/, 7)
puts 'a,b,c,,,'.split(/,/, -1)

puts '112233445566778899'.squeeze
puts '112233445566778899'.squeeze('2-8')
puts '112233445566778899'.squeeze('2378')
puts '112233445566778899'.squeeze('2-8', '^4-6')

puts 'string'.start_with?('str')
puts 'string'.start_with?('ing')
puts 'string'.start_with?('ing', 'str')
puts 'string'.start_with?(/\w/)
puts 'string'.start_with?(/\d/)

puts '  abc  \r\n'.strip

puts 'abcxyz'.swapcase

# 全角英数字といくつかの記号の半角化
email = "ｒｕｂｙ−ｌａｎｇ＠ｅｘａｍｐｌｅ．ｃｏｍ"
puts email.tr("０-９ａ-ｚａ-ｚ．＠−", "0-9a-za-z.@-")

puts 'oryv'.tr('a-z', 'd-za-c')
puts 'oryv'.tr('a-z', 'b-za-a')

1.step(26) do |n|
  puts 'uzfqdzmfuazmxulmfuaz'.tr('a-z', [*'a'..'z'].rotate(n).join)
end

puts "gooooogle".tr_s("a-z", "a-z")

puts "foo".tr_s("o", "f")
puts "foo".tr("o", "f").squeeze("f")

puts "string? string.".upcase

("a" .. "za").each do |str|
  print str
end
'a'.upto('za') do |str|
  print str
end

s = 0; 't5s3g4'.chars { |c| n = c.to_i - 1; puts n < 0 ? s = c : s * n }
$s;'t5s3g4'.chars { |c| n = c.to_i - 1; puts n < 0 ? s = c : s * n }
't5s3g4'.chars.each {|c,n|puts c*n.to_i}
't5s3g4'.chars.each_slice(2){|c,n|puts c*n.to_i}
't5s3g4'.scan(/(.)(.)/) { |c, n| puts c * n.to_i }
't5s3g4'.scan(/(.)(.)/) { |c, n| puts c * n.hex }
't1s5g9'.scan(/(.)(.)/) { |c, n| puts c * n.hex }
't1s5g9'.scan(/(.)(.)/) { puts _1 * _2.hex }
# 't1s5g9'.gsub(/(.)(.)/) { puts _1 * _2.hex }

# class array (ruby 3.3 リファレンスマニュアル)
# https://docs.ruby-lang.org/ja/latest/class/array.html

puts [1, 2, 3, 4, 5]
puts %w[1 2 3 4 5]
puts 1..5
puts (1..5).to_a
puts *1..5
puts [*1..5]

puts [1, 2, 3].to_a.join(?+)
puts [*1..3].to_a.join(?+)
puts [1,2,3]*?+
puts [*1..3]*?+

puts [1, 1, 2, 2, 3, 3].uniq
puts [1, 1, 2, 2, 3, 3]|[]

puts [1, 2, 3].push(4)
puts [1, 2, 3] << 4

puts [1, 2, 3].unshift(4)
puts [1, 2, 3][0, 0] = 4

puts [nil, 1, 2, 3, nil].compact
puts [nil, 1, 2, 3, nil] - [p]

puts [1, 2].reverse
puts [1, 2].rotate

[1, 2, 3].inject(:+)
eval [1, 2, 3]*?+
[1, 2, 3].sum

puts [1, 1, 2, 3] & [3, 1, 4]
puts [1, 1, 2, 3].intersection([3, 1, 4])

puts [1, 1, 2, 3] | [3, 1, 4]
puts [1, 1, 2, 3].union([3, 1, 4])

puts ([1, 1, 2, 3] + [3, 1, 4]).uniq

puts [1, 2, 3] * 3
puts [1, 2, 3] * ','
puts [1, 2, 3].join ','

puts [1, 2] + [8, 9]

puts [1, 2, 3, 4] - [2, 3]
puts [1, 2, 3, 4].difference([2, 3])

puts [1] << 2 << 3 << 4
puts [1].push(2, 3, 4)
puts [1].push([2, 3, 4])

puts [1, 2, 3] <=> [1, 3, 2]
puts [1, 2, 3] <=> [1, 2, 3]
puts [1, 2, 3] <=> [1, 2]

puts ['a', 'c']    == ['a', 'c', 7]
puts ['a', 'c', 7] == ['a', 'c', 7]
puts ['a', 'c', 7] == ['a', 'd', 'f']

a = %w[a b c d e]
puts a[0..1]
puts a[0, 3]
a[0] = 1
puts a
a[10] = 1
puts a
a[0..2] = %w[o p]
puts a
a[2..0] = %w[v w]
puts a
a[2..4] = []
puts a
a[0..10] = ['a']
puts a

a = [0, 1, 2, 3]
a[1, 0] = ["inserted"]
puts a

puts [5, 6, 7].all? {|v| v > 0 }
puts %w[ant bear cat].all?(/t/)

puts [1, 2, 3].any? {|v| v > 1 }
puts %w[ant bear cat].any?(/d/)

a = [[1, 15], [2, 25], [3, 35]]
puts a.assoc(1)
puts a.assoc(15)
puts a.rassoc(1)
puts a.rassoc(15)

a = [0, 4, 7, 10, 12]
puts a.bsearch { |x| x >=   4 }
puts a.bsearch { |x| x >=   6 }
puts a.bsearch { |x| x >=   7 }
puts a.bsearch { |x| x >=  -1 }
puts a.bsearch { |x| x >= 100 }

ary = [0, 4, 7, 10, 12]
# 4 <= v < 8 になる要素を検索
puts ary.bsearch { |x| 1 - x / 4 }
# 8 <= v < 10 になる要素を検索
puts ary.bsearch { |x| 4 - x / 2 }
puts ary.clear

puts [1, 2, 3].puts {|n| n * 3 }

a = [1, 2, 3, 4]
puts a.combination(1).to_a
puts a.combination(2).to_a
puts a.combination(3).to_a
puts a.combination(4).to_a

a = [1, 2, 3, 4]
result = []
a.combination(2) { |e| result << e }
puts result

a = [1, nil, 2, nil, 3, nil]
puts a.compact

array = [1, 2]
a     = [3, 4]
array.concat a
puts array
puts a
puts array.concat a, a, a

a = [1, 2, 4, 2.0]
puts a.count
puts a.count(2)
puts a.count { |x| x % 2 == 0 }

# %w[a b c].cycle { |x| puts x }

a = [1, 2, 3, 2, 1]
puts a.delete(2)
puts a

a = [0, 0, 1, 2, 3, 4]
a.delete_at 2
puts a

a = [0, 1, 2, 3, 4, 5]
a.delete_if { |x| x % 2 == 0 }
puts a

a = [0, 1, 2, 3, 4, 5]
e = a.reject!
puts e
e.each { |i| i % 2 == 0 }
puts a

a = %w[a b c d e f]
a.keep_if { |v| v =~ /[aeiou]/ }
puts a
a = %w[a b c d e f]
a.select! { |v| v =~ /[aeiou]/ }
puts a

puts [1, 1, 2, 2, 3, 3, 4, 5].difference([1, 2, 4])
puts [1, 'c', :s, 'yep'].difference([1], ['a', 'c'])

a = [[1, [2, 3]]]
puts a.dig(0, 1, 1)
puts a.dig(1, 2, 3)
# puts a.dig(0, 0, 0)
puts [42, { foo: :bar }].dig(1, :foo)

a = [0, 1, 2, 3, 4, 5, 0]
puts a.drop(3)
puts a

a = [0, 1, 2, 3, 4, 5, 0]
b = a.drop_while { |n| n < 3 }
puts a
puts b

a = [0, 1, 2, 3, 4]
a.fill(10)
puts a #=> [10, 10, 10, 10, 10]

a = [0, 1, 2]
a.fill('a')
puts a
a[0].capitalize!
puts a
a.fill("x", 5..10)
puts a
puts [].fill(1..2) { |n| n }

puts [1, 2, 3, 4, 5].select { |n| n.even? }
puts [1, 2, 3, 4, 5].select(&:even?)

puts [1, 0, 0, 1, 0].index(1)
p([0, 1, 0, 1, 0].index { |v| v > 0 })
p([0, 1, 0, 1, 0].index(&:positive?))

puts [0, 1, 2].first
puts [0, 1, 2].first(0)
puts [0, 1, 2].first(1)
puts [0, 1, 2].first(2)
puts [0, 1, 2].first(3)
puts [0, 1, 2].first(4)

a = [1, [2, 3, [4], 5]]
puts a.flatten
puts a
a = [1, 2, [3, [4, 5]]]
puts a.flatten(1)
puts a.flatten(2)
puts a.flatten(3)

a = ['a', 'b', 1]
puts a.hash
b = a.dup
puts b.hash
puts ['a', 1, 'b'].hash
puts ['a', 1.0, 'b'].hash

a = %w[a b c]
puts a.include?('b')
puts a.include?('z')

a = [1, 2, 3]
a.insert(2, 'a', 'b')
puts a
a.insert(-2, 'x')
puts a

puts [1, 2, 3, 4].to_s

a = [1, 2, 3]
b = [3, 4, 5]
c = [5, 6, 7]
puts a.intersect?(b)
puts a.intersect?(c)

puts [1, 1, 3, 5].intersection([3, 2, 1])
puts ['a', 'b', 'z'].intersection(['a', 'b', 'c'], ['b'])
puts ['a'].intersection

a = [1, 2, 3]
a.push a
puts a
a = [1, 2, 3]
puts a.join('-')

a = [1, 2, 3, 4, 5]
puts a.last
puts a.length
puts a.size
puts a.max
puts a.max(2)
puts a.min
puts a.min(2)
puts a.minmax

a = %w[albatross dog horse]
puts a.max(2) { |x, y| x.length <=> y.length }
puts a.max(2)
puts a.min(2) { |x, y| x.length <=> y.length }
puts a.min(2)
puts a.minmax
puts a.minmax { |x, y| x.length <=> y.length }

a = %w[ant bear cat]
puts a.none? { |word| word.length == 5 }
puts a.one? { |word| word.length == 5 }

a = [1, 2, 3]
puts a.permutation.to_a
puts a.permutation(1).to_a
puts a.permutation(2).to_a
puts a.permutation(3).to_a
puts a.permutation(0).to_a
puts a.permutation(4).to_a

a = [1, 2, 3]
result = []
puts a.permutation(2) { |e| result << e }
puts result

a = [1, [2, 3], 4]
puts a.pop
puts a.pop
puts a
puts a.pop
puts a.pop
puts a
a = [1, 2, 3]
puts a.pop(2)
puts a

a = [1, 2, 3]
a.unshift 0
puts a
a.unshift [0]
puts a
a.unshift 1, 2
puts a

puts [1, 2, 3].product([4, 5])
puts [1, 2].product([1, 2])
puts [1, 2].product([3, 4], [5, 6])
puts [1, 2].product
puts [1, 2].product([])

a = [1, 2, 3, 4, 5, 6]
puts a.reject { |i| i % 2 == 0 }

a = [1, 2, 3]
puts a.repeated_combination(1).to_a
puts a.repeated_combination(2).to_a
puts a.repeated_combination(3).to_a

a = %w(a b c d)
puts a.rotate
puts a
puts a.rotate(2)
puts a.rotate(-1)
puts a.rotate(-3)

a = (1..10).to_a
puts a.sample
puts a.sample
puts a.sample(3)
puts a

puts [1, 2, 3].shuffle
rng = random.new
rng2 = rng.dup
puts [1, 2, 3].shuffle(random: rng)
puts [1, 2, 3].shuffle(random: rng2)

puts %w[0 1 2].slice(1)
puts %w[0 1 2].slice(2)
puts %w[0 1 2].slice(10)
puts %w[a b c].slice!(1, 2)
puts %w[a b c].slice!(1, 0)

puts %w[d a e c b].sort
puts %w[9 7 10 11 8].sort
puts %w[9 7 10 11 8].sort { |a, b| a.to_i <=> b.to_i }
puts %w[9 7 10 11 8].sort_by { |x| x.to_i }

puts [].sum
puts [].sum(0.0)
puts [1, 2, 3].sum
puts [3, 5.5].sum
puts [2.5, 3.0].sum(0.0) { |n| n * n }
puts [*1..10].sum(0.0) / [*1..10].length


puts %w[a b c].sum('')
puts [[1], [[2]], [3]].sum([])          #=> [1, [2], 3]

puts [1, 2, 3, 4, 5, 0].take(3)
[1, 2, 3, 4, 5, 0].take(2).each { |n, j| puts j }
puts [1, 2, 3, 4, 5, 0].take_while { |n| n < 3 }

puts [[:foo, :bar], [1, 2]].to_h
puts ['foo', 'bar'].to_h {|s| [s, s.ord]}

puts [[1, 2],
   [3, 4],
   [5, 6]].transpose

puts %w[a b c].union(%w[c d a])
puts %w[a].union(%w[e b], %w[a c b])
puts %w[a].union

puts [1, 1, 1].uniq
puts [1, 4, 1].uniq
puts [1, 3, 2, 2, 3].uniq
puts [1, 3, 2, '2', '3'].uniq
puts [1, 3, 2, '2', '3'].uniq { |n| n.to_s }

ary = %w[a b c d e]
puts ary.values_at(0, 2, 4)
puts ary.values_at(3, 4, 5, 6, 35)
puts ary.values_at(0, -1, -2)
puts ary.values_at(-4, -5, -6, -35)
puts ary.values_at(1..2)
puts ary.values_at(3..10)
puts ary.values_at(6..7)
puts ary.values_at(0, 3..5)

puts [1, 2, 3].zip([4, 5, 6],  [7, 8, 9])
puts [1, 2].zip([:a, :b, :c],  [:a, :b, :c, :d])
puts [1, 2, 3, 4, 5].zip([:a, :b, :c],  [:a, :b, :c, :d])
puts [1, 2, 3].zip([4, 5, 6],  [7, 8, 9]) { |ary| puts ary }

# a = array.new
# a = []
# a = ['foo', 'bar', 'baz']
# a = %w(foo bar baz)
# a = [1,2,3,4,5]
# a = *1..5
# puts a.join(?+)
# puts a.*?+
# [1,1,2,2,3,3].uniq
# a = [12, 47, 35]
# puts a.max
# puts a.sort!
# puts a.first
# puts a.last

# class hash (ruby 3.3 リファレンスマニュアル)
# https://docs.ruby-lang.org/ja/latest/class/hash.html
# h = {}
# puts h
puts ({ foo: { bar: { baz: 1 } } }).dig(:foo, :bar, :baz)
puts ({ foo: { bar: { baz: 1 } } }).dig(:foo, :zot, :xyz)
puts ({ foo: [10, 11, 12] }).dig(:foo, 1)

{ a: 1, b: 2 }.each_key { |k| puts k }
{ a: 1, b: 2 }.each_value { |v| puts v }
{ a: 1, b: 2 }.each_pair { |k, v| puts [k, v] }

puts ({ a: 100, b: 200, c: 300 }).except(:a)

h = { 'cat' => 'feline', 'dog' => 'canine', 'cow' => 'bovine' }
# puts h.fetch_values('cow', 'bird') { |k| k.upcase }
puts h.fetch_values('cow', 'bird', &:upcase)

p({ 1 => 'one' }.key?(1))
p({ 1 => 'one' }.has_key?(1))
p({ 1 => 'one' }.include?(1))
p({ 1 => 'one' }.member?(1))

p({ 1 => 'one' }.value?('one'))
p({ 1 => 'one' }.has_value?('one'))

h = { 'a' => 0, 'b' => 100, 'c' => 200, 'd' => 300, 'e' => 300 }
puts h.invert

puts ({ 1 => 'a', 2 => 'b', 3 => 'c' }).merge({ 2 => 'b', 3 => 'c', 4 => 'd' })

h = { 'd' => 100, 'a' => 200, 'v' => 300, 'e' => 400 }
puts h.length
puts h.size
puts h.delete('a')
puts h.length
puts h.size

h = { 1 => 10, 2 => 20, 3 => 30 }
puts [1, 2, 3].map(&h)

h = { 1 => 'a', 2 => 'b', 3 => 'c' }
puts h.values_at(1, 3, 4)

# class range (ruby 3.3 リファレンスマニュアル)
# https://docs.ruby-lang.org/ja/latest/class/range.html

puts (1..5).to_a
puts (1...5).to_a
puts (1..5).first
puts (1..5).last
puts (1..5).min
puts (1..5).max
puts (1..5).minmax
puts (1..5).first(3)
puts (1..5).last(3)
puts (1..5).min(3)
puts (1..5).max(3)
puts (1..5).minmax
puts (1..5).cover?(6)
puts (1..5).cover?(5)
puts (1...5).cover?(5)

('a'..'f').step(2) { |v| puts v }

a = [0, 4, 7, 10, 12]
puts (0...a.size).bsearch { |n| a[n] >= 4 }
puts (0...a.size).bsearch { |n| a[n] >= 6 }
puts (0...a.size).bsearch { |n| a[n] >= 8 }
puts (0...a.size).bsearch { |n| a[n] >= 100 }

puts ('b'..'d').include?('d')
puts ('b'..'d').include?('ba')
puts ('b'..'d').cover?('d')
puts ('b'..'d').cover?('ba')

# require 'date'
# r = (date.today - 365)..(date.today + 365)
# puts r.include?(date.today)
# puts r.include?(datetime.now)
# puts r.cover?(date.today)
# puts r.cover?(datetime.now)

# class enumerator (ruby 3.3 リファレンスマニュアル)
# https://docs.ruby-lang.org/ja/latest/class/enumerator.html
(1..10).each_cons(3) { |v| puts v }
(1..10).each_slice(3) { |v| puts v }

[5, 10, 15].each_with_index { |n, idx| puts [n, idx] }

require 'prime'
puts Prime.entries 10

puts %w[albatross dog horse].minmax_by(&:length)

puts [1, 2, 4, 9, 10, 11, 12, 15, 16, 19, 20, 21].slice_when { |i,  j| i + 1 != j }.to_a
puts [3, 11, 14, 25, 28, 29, 29, 41, 55, 57].slice_when { |i, j| 6 < j - i }.to_a
puts [0, 9, 2, 2, 3, 2, 7, 5, 9, 5].slice_when { |i, j| i > j }.to_a
puts [7, 5, 9, 2, 0, 7, 9, 4, 2, 0].slice_when { |i, j| i.even? != j.even? }.to_a
puts [10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0].partition { |i| i % 3 == 0 }
puts [0, 2, 4, 1, 2, 4, 5, 3, 1, 4, 2].slice_after(&:even?).to_a
puts [0, 2, 4, 1, 2, 4, 5, 3, 1, 4, 2].slice_before(&:even?).to_a


puts (1..10).filter_puts { |i| i * 2 if i.even? }
puts (1..10).puts { |i| i * 2 if i.even? }
puts (1..10).puts { |i| i.even? ? i * 2 : nil  }
puts (1..10).find_all { |i| i * 2 if i.even? }
puts (1..10).select { |i| i * 2 if i.even? }

puts (1..10).find_index(2)
puts (1..10).to_a.index(2)
puts (1..10).grep(2..5) { |v| v * 2 }
puts (1..10).grep_v(2..5) { |v| v * 2 }

puts (1..6).group_by { |i| i % 3 }

puts %w[albatross dog horse].max_by(2, &:length)

puts %w[bar foo bar foo].sort_by(&:downcase)

puts %i[hello world].each_with_index.to_h
puts (1..5).to_h {|x| [x, x ** 2]}

# class time (ruby 3.3 リファレンスマニュアル)
# https://docs.ruby-lang.org/ja/latest/class/time.html

puts time.now
puts time.now.strftime('%y/%m/%d %h:%m:%s')
puts time.new(2000, 12, 31, 23, 59, 59.5)
puts time.new(1980, 3, 7, 0, 0, 0)
puts (time.now.strftime('%y%m%d').to_i - time.new(1980, 3, 7, 0, 0, 0).strftime('%y%m%d').to_i) / 10000
require 'date'
puts (date.today.strftime('%y%m%d').to_i - date.new(1980, 3, 7).strftime('%y%m%d').to_i) / 10000
puts time.now.friday?

# rubyコードゴルフに挑戦してみた。
# https://grafi.jp/pages/rubyist-magazine-codegolf-challenge
puts *(eval"range.new "+'3,5')
s = '3,5'
puts *(eval"range.new "+s)
f,l='3,5'.split(',')
puts range.new(f,l).to_a

# rubyのコードゴルフのtips #ruby - qiita
# https://qiita.com/siman/items/d67643066e591b2f34ab

# コードゴルフ この関数、メソッド便利ね集(主にruby) - プログラミングを上達させたい
# https://frfrfrfr.hatenablog.com/entry/2018/06/20/192410
puts [82, 117, 98, 121].pack('c*')

s = ''
[82, 117, 98, 121].each { |c| s << c }
puts s

s = ''
%w[82 117 98 121].each { |c| s << c.to_i.chr }
puts s

puts 'ruby'.unpack('c*')
a = []
'ruby'.each_byte { |c| a << c }
puts a

s = '111 108 108 101 72 32 101 114 101 104 116 32 41 58'
puts s.split.reverse.map(&:to_i).pack('c*').split.reverse.join(' ')

puts '12'.match?(/^[a-za-z0-9]{3,20}$/)
puts '1234567890'.match?(/^[a-za-z0-9]{3,20}$/)
puts '123456789012345678aa'.match?(/^[a-za-z0-9]{3,20}$/)
puts '123456789012345678aa'.match?(/^[a-za-z0-9]{3,20}$/)
puts '123456789012345678a_'.match?(/^[a-za-z0-9]{3,20}$/)
puts '123456789012345678a_'.match?(/^\w{3,20}$/)

puts '咲いた、咲いた、チューリップが咲いた'.gsub(/咲いた+/, '咲かない')
puts '咲いた、咲いた、チューリップが咲いた'.gsub(/咲*た/, '咲かない')
puts '咲いた、咲いた、チューリップが咲いた'.gsub(/咲?た/, '咲かない')
puts '咲いた、咲いた、チューリップが咲いた'.gsub(/咲.た/, '咲かない')
puts '咲いた、咲いた、チューリップが咲いた'.gsub(/咲.+た/, '咲かない')
puts '咲いた、咲いた、チューリップが咲いた'.gsub(/咲.*た/, '咲かない')
puts '咲いた、咲いた、チューリップが咲いた'.gsub(/咲.?た/, '咲かない')
puts 'お腹がすいた、りんごが食べたい'.match(/お腹がすいた、(.+)が食べたい/)[1]
puts '2024/06/16'.match(/\d{4}\/\d{2}\/\d{2}/)
puts '2024/06/16'.match(/\d{4}\/\d{2}\/\d{2}/)[0]
puts '2024/06/16'.match(/\d{4}\/\d{2}\/\d{2}/)[1]
puts 'りんごみかん'.match(/^りんご/)
puts 'みかんりんご'.match(/^りんご/)

require 'prime'
puts (1...100).count &:prime?

s = 's.split.reverse.map(&:to_i).pack'
puts s.upcase.chars.uniq.size

# codingameのclash of code、楽しすぎる侍 - プログラミングを上達させたい
# https://frfrfrfr.hatenablog.com/entry/2020/09/09/215815
n = '12341'.chars
r = n.reverse
puts n.sort!=n&&r.sort!=r

a = '3'
b = %w[foo1 bar22 baz333]
puts a.to_i.times.collect{b.shift}.sort_by{|x|x.length}
b = %w[foo1 bar22 baz333]
puts a.to_i.times.collect{b.shift}.sort_by(&:size)
b = %w[foo1 bar22 baz333]
puts (1..a.to_i).map{b.shift}.sort_by(&:size).reverse

# 引き続きclash of codeにハマっています(コードゴルフ編) - プログラミングを上達させたい
# https://frfrfrfr.hatenablog.com/entry/2018/06/09/230937
puts 'actg'.tr('acgt', 'tgca')
puts 'actg'.tr('atcg', 'tagc')

puts 'hello world'.split.map(&:capitalize).join(' ')
puts 'hello world'.split.map(&:capitalize)*' '

# rubyでコードゴルフする過程で知った7つの書き方 | web egg
# https://blog.leko.jp/post/7-ways-learning-from-ruby-code-golf/
puts array.new(2).map{array.new}
puts '%3d' % 1
puts 1000.to_s.size
10.downto(1) { |i| puts i }

a = [1, 2, 3, 4]
puts a.join('|')
puts a*'|'
puts a*' '
puts a*?|

# ruby code golf technic #ruby - qiita
# https://qiita.com/tbpgr/items/775636617d58bed56657
putc 65
puts ?:
puts [*1..5]*?,

# ruby cheat sheet for beginner (ruby初心者チートシート) · github
# https://gist.github.com/yohamta/951b8367a269dcbfe347
puts 1.nil?
puts 'foo' << '-bar' << '-baz'
puts [].empty?
puts [].nil?

# kdh cuputs 第1回プログラミング大会を開催しました | フライウィール
# https://www.flywheel.jp/topics/kdhcup_programming_contest01/

puts 'kdh cuputs programming contest'.chars.map(&:ord).sum

# rubyの条件分岐をもっと簡潔に
# https://melborne.github.io/2014/04/18/array-index-with-boolean/

h = {3=>"fizz",5=>"buzz",15=>"fizzbuzz"}
puts (1..100).puts { |n| h[n.gcd(15)] }

# rubyによる不適切なfizzbuzzの世界 #ruby - qiita
# https://qiita.com/supermomonga/items/b8faf7441ada9c310282

(1..100).map{|_|
  _.tap{|_|
    break :fizzbuzz if _ % 15 == 0
    break :fizz if _ % 3 == 0
    break :buzz if _ % 5 == 0
  }
}.puts &method(:puts)

# &演算子と、procと、object#method について理解しなおす #ruby - qiita
# https://qiita.com/kasei-san/items/0392097791d3a5998216
[1, 2, 3].each(&method(:puts))
[1, 2, 3].map(&method(:puts))
[1, 2, 3].map(&p)
puts [1, 2, 3].map(&:to_s)

# object#taputs (ruby 3.3 リファレンスマニュアル)
# https://docs.ruby-lang.org/ja/latest/method/object/i/tap.html

(1..10)                  .taputs {|x| puts "original: #{x}" }
  .to_a                  .taputs {|x| puts "array:    #{x}" }
  .select {|x| x.even? } .taputs {|x| puts "evens:    #{x}" }
  .puts {|x| x*x }        .taputs {|x| puts "squares:  #{x}" }


# atcoderで見かけたrubyショートコーディング術 #競技プログラミング - qiita
# https://qiita.com/syumai/items/7eb91d673ed371378a4a
i = '3 5'
j = '2 6'
x, n = i.split.puts &:to_i
y, m = j.split.puts &:to_i
puts x*n+y*m

ARGV << 'a.txt'
x=y=n=0
(n=gets.to_i).times{a,b=gets.split.puts &:to_i;x+=a;y+=b}
puts x/n,y/n

ARGV << 'a.txt'
x=y=n=0
n=gets.to_i
$<.map{|s|a,b=s.split.puts &:to_i;x+=a;y+=b}
puts x/n,y/n


ARGV << 'b.txt'
n,t=gets.split.puts &:to_i
x=0
n.times{x+=gets.to_i}
# puts t>x/n ?'tall':t<x/n ?'short':'normal'
t=170;x=507;
puts %w[normal tall short][t<=>x/n]


# Rubyで使われる記号の意味（正規表現の複雑な記号は除く） (Ruby 3.3 リファレンスマニュアル)
# https://docs.ruby-lang.org/ja/latest/doc/symref.html
'1234543212345'.each_char { |n| print( (n == ?2)..(n == ?4) ? n : '_' ) }
'1234543212345'.chars { |n| print( (n == ?2)..(n == ?4) ? n : '_' ) }
'1234543212345'.chars { print( (_1 == ?2)..(_1 == ?4) ? _1 : '_' ) }

puts [3, 1, 2].sort {|n, m| m <=> n }
puts [3, 1, 2].sort { _2 <=> _1 }
puts [3, 1, 2].sort.reverse
puts [3, 1, 2].sort.reverse.reverse

puts [1, 2, 3].puts { _1 * 2 }




# Array#sort (Ruby 3.3 リファレンスマニュアル)
# https://docs.ruby-lang.org/ja/latest/method/Array/i/sort.html
a = ["9", "7", "10", "11", "8"]
puts a.sort_by{|x| x.to_i}
puts a.sort_by{_1.to_i}
puts a.sort_by(&:to_i)


# ruby - ブロック内で引数適用も省略して書ける？ - スタック・オーバーフロー
# https://ja.stackoverflow.com/questions/14690/%E3%83%96%E3%83%AD%E3%83%83%E3%82%AF%E5%86%85%E3%81%A7%E5%BC%95%E6%95%B0%E9%81%A9%E7%94%A8%E3%82%82%E7%9C%81%E7%95%A5%E3%81%97%E3%81%A6%E6%9B%B8%E3%81%91%E3%82%8B

def my_method(s)
  s + ?!
end
puts %w(foo bar).map{ |s| my_method(s) }
# 該当オブジェクト(Array)のメソッドではない場合
puts %w(foo bar).map(&method(:my_method))

# 【Ruby】method(:xxx)と表現するコード（Object#method）について | Enjoy IT Life
# https://nishinatoshiharu.com/ruby-method-operator/
require "net/http"
url = "https://google.com/"
puts url.then(&URI.method(:parse))
  .then(&Net::HTTP.method(:get_response))
  .code

require "net/http"
url = "https://google.com/"
puts URI.parse(url).then(&Net::HTTP.method(:get_response)).code

# Rubyのthen(yield_self)の概要と具体的な使いどころ | Enjoy IT Life
# https://nishinatoshiharu.com/ruby-then-overview/
s = "ruby"
puts s.upcase
puts s.then(&:upcase)
puts s.tap(&:upcase)
puts s.upcase.reverse
puts s.then(&:upcase).then(&:reverse)
puts s.tap(&:upcase).tap(&:reverse)
puts s.chars.map(&:upcase).join
puts :ruby.upcase


# [初心者向け] RubyやRailsでリファクタリングに使えそうなイディオムとか便利メソッドとか #Ruby - Qiita
# https://qiita.com/jnchito/items/dedb3b889ab226933ccf
users = %w[a b c]
if users
  users.each{ |user| puts user+?! }
end
Array(users).each{ |user| puts user+?! }

puts "a b c".split
puts "a,b,c".split(',')
puts "a,b,c".split ?,

i = 1
i = 2
i = 3
puts i == 1 ? 1 :
  i == 2 ? 2 :
  3

# マネーフォワード社内PRに見られるRubyの書き方について - (8) 受け渡しのパターンマッチング 3 - Money Forward Developers Blog
# https://moneyforward-dev.jp/entry/2019/08/21/ruby-code-8/
x = 'foo'
y = 'bar'
x, y = y, x
puts x, y

div = 47 / 5
mod = 47 % 5
puts div, mod
div, mod = 47.divmod(5) # => [9, 2]
puts div, mod

h = {foo: 'foo', bar: 'bar', baz: 'baz', qux: 'qux'}
a = h[:bar]
b = h[:qux]
c = h[:foo]
puts a, b, c
a, b, c = h.values_at(:bar, :qux, :foo)
puts a, b, c

a = [1, 2, 5, 6, 7, 8, 10]
puts a.chunk_while{|x, y| x.next == y}.to_a
a.chunk_while{|x, y| x.next == y}.puts do
  |first, middle = nil, *, last|
  if middle then '#{first}-#{last}'
  elsif last then '#{first}, #{last}'
  else first
  end
end
.join ?,

puts (1..6).inject(:*)
puts [2, 3, 5].map(&Math.method(:sqrt))


# 【初級者向け】rubyで効率のよいコードの書き方例いろいろ【Enumerable編】 #Ruby - Qiita
# https://qiita.com/kasei-san/items/0e808dc3d3e4ed414397
puts [1, 2, 3].puts {|i| i * 10 }
puts [1, 2, 3].select(&:even?).puts {|i| i * 10}

a = [1, 2, 3, 4].inject(0) do |i, sum|
  sum + i
end
puts a
puts [1, 2, 3, 4].sum

[1, 2, 3].each(&method(:puts))


['a', 1, '2', 3, nil].compact.select {|v| v.to_s =~ /[0-9]/ }.map(&:to_i).select(&:even?).map{|i|i*10}.each(&method(:puts))


puts (1..10).count &:even?

# Ruby: Object#tap、Object#then を使ってみよう｜TechRacho by BPS株式会社
# https://techracho.bpsinc.jp/kazz/2019_12_23/85305
puts (1..5).puts {|i| i * 2}
puts (1..5).inject(:*)

[40, 30, 10, 30, 50]
   .sort
   .tap{|_| puts _}
   .tap(&method(:p))
   .reverse
   .tap{|_| puts _}

puts [70, 105, 122, 122, 66, 117, 122, 122].pack 'c*'

# 知って得する！５５のRubyのトリビアな記法
# https://melborne.github.io/2013/03/04/ruby-trivias-you-should-know-4/

require 'date'
puts Array(5).puts { |n| Date.new(2010,n).strftime "%B" }
puts Array([1, 2, 3]).puts { |n| Date.new(2010,n).strftime "%B" }
puts Array(4..8).puts { |n| Date.new(2010,n).strftime "%B" }

s = 'てぶくろ'
3.times { puts s.reverse! }
puts 3.times.map { [rand(256), rand(256), rand(256)] }
puts 3.times.map(&:succ)
puts 3.times.map(&:next)

puts (1..100).last(5)

puts "I love %{b}, not %{a}" % {a: :java, b: :ruby}

*a, b, c = %w(1 2 3 4 5)
puts a, b, c
puts a * b
x = a * b + c
puts x







# 正規表現 (Ruby 3.3 リファレンスマニュアル)
# https://docs.ruby-lang.org/ja/latest/doc/spec=2fregexp.html
# ----------------------------------------------

# Rubyのバリデーション用正規表現集 · GitHub
# https://gist.github.com/nashirox/38323d5b51063ede1d41

# CRASH OF CODE
a = %w[dan-pc dan-pc. ftp://dan-pc http://dan-pc https://dan-pc]
a.each do |s|
  puts s[?.] ? 'http://' + s : s[?:] ? s : 'ftp://' + s
end

# TODO: too short


# Fibonacci - Ruby sample code
# https://www.codingame.com/playgrounds/3036/ruby-sample-code/fibonacci
def fibonacci(i)
  return i if (0..1).include?(i)
  fibonacci(i - 1) + fibonacci(i - 2)
end
print (1..20).map{|i|fibonacci(i)}

# Rubyでフィボナッチ数列のテスト · GitHub
# https://gist.github.com/aoirint/429837ec58120e30092349ce22c780da
def fib(i)
  if i == 1 then
    return 0
  end
  if i == 2 then
    return 1
  end
  return fib(i-1) + fib(i-2)
end
for i in 1..20
  print(fib(i), "\n")
end

def f(i)
  i<2?i:f(i-1)+f(i-2)
end
(1..20).each{puts f(_1)}

# 東京Ruby会議10で行われたコードゴルフの解答例を紹介します - (ﾟ∀ﾟ)o彡 sasata299's blog
# http://blog.livedoor.jp/sasata299/archives/51872727.html
# puts eval($**'..').map{|k|a=[[:Fizz][k%3],[:Buzz][k%5]]*'';a==''?k:a}
(1..30).each{|i|puts"#{i}\r#{[:Fizz][i%3]}#{[:Buzz][i%5]}"}
puts (1..30).map{|k|a=[[:Fizz][k%3],[:Buzz][k%5]]*'';a==''?k:a}
puts (1..30).map{|i|a=[[:Fizz][i%3],[:Buzz][i%5]]*'';a==''?i:a}

# a,b,m=$<.map &:to_i
a,b,m=8,7,2
x=y=d=0
D=-1,1,0,0
p (1..1e6).find{d=(a*d+b)%m;[x+=D[d%4],y+=D[(d-2)%4]]==[0,0]}
