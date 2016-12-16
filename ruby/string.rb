#!/usr/bin/ruby

x, y, z = 12, 36, 72
puts "The value of x is #{ x }."
puts "The sum of x and y is #{ x + y }."
puts "The average was #{ (x + y + z)/3 }."

puts %{Ruby is fun.}  #equivalent to "Ruby is fun."
puts %Q{ Ruby is fun. } #equivalent to " Ruby is fun. "
puts %q[Ruby is fun.]  #equivalent to a single-quoted string
puts %x!ls! #equivalent to back tick command output `ls`

puts "foo = %{foo}" % { :foo => 'bar' }

str1 = "a"
str2 = "A"
puts str1.casecmp str2
puts str1.eql? str2
puts str1.capitalize.eql? str2

str1 = "contem"
puts str1.count("cont")
