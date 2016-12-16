#!/usr/bin/ruby

$i = 0
$num = 5

while $i <= $num  do
   puts("Inside the loop i = #$i" )
   $i +=1
end

puts "\n"

# other syntax for while
$i = 0
$num = 5
begin
   puts("Inside the loop i = #$i" )
   $i +=1
end while $i <= $num

puts "\n"
$i = 0
$num = 5
until $i > $num  do
   puts("Inside the loop i = #$i" )
   $i +=1;
end

puts "\n"
$i = 0
$num = 5
begin
   puts("Inside the loop i = #$i" )
   $i +=1;
end until $i > $num


puts "\n"
for i in 0..5
   puts "Value of local variable is #{i}"
end

puts "\n"
(0..5).each do |i|
   puts "Value of local variable is #{i}"
end

puts "\nSkiping 10"
(10..100).step(10) do |n|
  puts "Value #{n}"
end
