#!/usr/bin/ruby

ary = ["fred", 10, 3.14, "This is a string", "last element", ]
ary.each do |i|
   puts i
end

hsh = colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }
hsh.each do |key, value|
   print key, " is ", value, "\n"
end

hsh = Hash.new
hsh['a'] = 1
hsh['b'] = {'a' => 2}
puts hsh

puts "\nincluding last element (x..y)"
(10..15).each do |n|
   print n, ' '
end

puts "\nnot including last element (x...y)"
(10...15).each do |n|
   print n, ' '
end
puts "\n"
