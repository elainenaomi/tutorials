#!/usr/bin/ruby

puts "operator <=>"
a = 1
b = 2
puts (a <=> b)

a = b = 1
puts (a <=> b)

a = 2
b = 1
puts (a <=> b)

puts "in range (a..b) === x"
puts (1...10) === 5
puts (1...5) === 5

puts 1.eql? 1
puts 1.eql?(1)
puts 1.eql?1

a = "a"
b = "a"
puts a.equal?b #same object id
puts a.eql?b #same content


# Assume if a = 60; and b = 13; now in binary format they will be as follows:
a = 00111100
b = 00001101

puts a&b == 00001100 #and
puts a|b == 00111101 #or
puts a^b == 00110001 #xor
puts ~a  == 11000011 #not


foo = 42
defined? foo    # => "local-variable"
defined? $_     # => "global-variable"
defined? bar    # => nil (undefined)

defined? yield    # => "yield" (if there is a block passed)
defined? yield    # => nil (if there is no block)
