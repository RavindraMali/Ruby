=begin
Ranges occur everywhere: January to December, 0 to 9, lines 50 through 67, and so on. 
Ruby supports ranges and allows us to use ranges in a variety of ways 
    Ranges as Sequences
    Ranges as Conditions
    Ranges as Intervals


    1) Ranges as Sequences
    The first and perhaps the most natural use of ranges is to express a sequence. 
    Sequences have a start point, an end point, and a way to produce successive values in the sequence.

    Ruby creates these sequences using the ''..'' and ''...'' range operators.
    The two-dot form creates an inclusive range, while the three-dot form creates a range that excludes the specified high value.
=end

$, = ", "

range1 = (1..10).to_a
puts "Range1 : #{range1}"

range2 = (1...10).to_a
puts "Range2 : #{range2}"

range3 = ("a".."f").to_a
puts "Range3 : #{range3}"

range4 = ('a'...'f').to_a
puts "Range4 : #{range4}"

range5 = ("baa".."bad").to_a
puts "Range 5 : #{range5}"

=begin
    OUTPUT
desktop:~/Desktop/ROR$ ruby 12_range.rb
Range1 : [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
Range2 : [1, 2, 3, 4, 5, 6, 7, 8, 9]
Range3 : ["a", "b", "c", "d", "e", "f"]
Range4 : ["a", "b", "c", "d", "e"]
Range 5 : ["baa", "bab", "bac", "bad"]

=end

# Ranges implement methods that let you iterate over them and test their contents in a variety of ways 

range6 = 0..9

puts range6.include?(5)
# O/P true

min = range6.min
puts "Min value : #{min} "
# Min value : 0 

max = range6.max
puts "Max value : #{max}"
# Max value : 9

reject = range6.reject { |i| i < 5}
puts "Rajected values are : #{reject}"
# Rajected values are : [5, 6, 7, 8, 9]

range6.each do |element|
    puts "In loop #{element}"
end
# In loop 0
# In loop 1
# In loop 2
# In loop 3
# In loop 4
# In loop 5
# In loop 6
# In loop 7
# In loop 8
# In loop 9

# Ranges can be used in case statements −

score = 40

result = case score
when 0..40 then "fail"
when 41..60 then "pass"
when 61..70 then "Pass with marit"
when 71..10 then "pass with distinction"
else "invalid score"
end

puts result
#fail

=begin
Ranges as Intervals

A final use of the versatile range is as an interval test: 
seeing if some value falls within the interval represented by the range.
This is done using ===, the case equality operator.
=end

if ( (1..10) === 15 )
    puts "15 lies in (1..10)"
elsif ( (11..15) === 15)
    puts "15 lies in (11..15)"
end
# 15 lies in (11..15)

if(('a'..'e') === 'd')
    puts "d lies in (a..f)"
end
# d lies in (a..f)s

if(('a'..'e') === 'z')
    puts "z lies in (a..f)"
end
# this will not provide output as z is not lies in a..e