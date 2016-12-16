#!/usr/bin/ruby

def test
   puts "You are in the method"
   yield
   puts "You are again back to the method"
   yield
end
test {puts "You are in the block"}

def test(&block)
   block.call
end
test { puts "Hello World!"}


BEGIN {
  # BEGIN block code
  puts "BEGIN code block"
}

END {
  # END block code
  puts "END code block"
}
  # MAIN block code
puts "MAIN code block"
