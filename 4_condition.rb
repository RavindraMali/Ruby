# condition - decision making IF [THEN] [ESLE] END

=begin
SYNTAX 

    if conditional [then]
    code...
    [elsif conditional [then]
    code...]...
    [else
    code...]
    end

=end

x = 10

if x > 10
    puts "X is greater than 10"
elsif  x < 10
    puts "X is less than 10"
elsif x == 10
    puts "X is equals to 10"
end

=begin

    Ruby if modifier
    Syntax

    code if condition

=end

puts "\travindra Mali " if x == 10

print "\tRuby\n" if x ==10

=begin 
    Ruby unless Statement
    Syntax

    unless conditional [then]
    code
    [else
    code ]
    end
=end
x =1
varX = 10

unless x<=0 
    puts "VarX : #{varX}"
else
    puts "False"
end

print "\tvarX : #{varX}\n" if x
x = false
puts "\tvarX : #{varX}" unless x  # if condition return false than it'll execute

=begin

    Ruby case Statement
    Syntax

    case expression
    [when expression [, expression ...] [then]
    code ]...
    [else
    code ]
    end

=end


$age =  15
case $age
when 0 .. 2
   puts "baby"
when 3 .. 6
   puts "little child"
when 7 .. 12
   puts "child"
when 13 .. 18
   puts "youth"
else
   puts "adult"
end