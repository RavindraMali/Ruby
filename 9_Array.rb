# Array in Ruby
names = Array.new(10)

puts names.size 

puts names.length

array = Array.new(4,"ravindra")

puts "#{array}"

nums = Array.new(10) { |e| e = e * 2}

puts "#{nums}"
num1 = Array.[](2,3,4,5)
puts "#{num1}"

num2 = Array(1..90)
puts "#{num2}"

digits = Array(0..10)

var_num = digits.at(6)

puts "Digit at 6Th :#{var_num}"
