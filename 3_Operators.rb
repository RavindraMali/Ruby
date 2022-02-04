var1 = 2
var2 = 4
# arithmatic operators
puts "Var1 : #{var1} Var2 : #{var2}"

puts "Addtion : #{var1 + var2}"

puts "Subtraction : #{var1 - var2}"

puts "Multiplication : #{var1 * var2}"

puts "Division : #{var2 / var1}"

puts  "mudule : #{var2 % var1}"

puts "Power : #{var1 ** var2}"

# comparison operators

puts " double Equals to  : #{var1} == #{var2}   = #{var1 == var2}"
puts " Not Equals To     : #{var1} != #{var2}   = #{var1 != var2}"
puts " Less Than         : #{var1} < #{var2}    = #{var1 < var2}"
puts " Greater Than      : #{var1} > #{var2}    = #{var1 > var2}"
puts " Less Equals to    : #{var1} <= #{var2}   = #{var1 <= var2}"
puts " Greater Equals to : #{var1} >= #{var2}   = #{var1 >= var2}"
puts " CombinedComparison: #{var1} <=> #{var2}  = #{var1 == var2}"
puts " Triple Equals to  : #{var1} === #{var2}  = #{var1 == var2}"

puts (1..10)===5

a = 1
b =1.0
c1=0
$c=1 
puts " double Equals to  : #{a} == #{b}   = #{a == b}"

puts " eql?  : #{a}.eql?#{b} = #{ a.eql?b }"
puts " eql?  : #{a}.eql?#{b} = #{ a.eql?(b) }"

# Logical Operators

if ( a and c1)
    puts true
else
    puts " c : #{$c} #{c1}"
end
x =10
y=20
$c = x>y ? x : y
puts $c

range = (1..10).to_a
puts "Range : #{range}"


