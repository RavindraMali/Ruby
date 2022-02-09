# string in Ruby

puts 'this is a simple string in ruby'

puts "you can write string in double quates also"

puts ' you won\'t go'   # to add single quate in string enclouse by single quate

print 'Won\'t you read O\'Reilly\'s book?'

# string expressions

x, y, z = 10, 20, 30

puts "\nThe value of X : #{x}"

puts "The Value of Y : #{y}"

puts "The Value of Z : #{z}"

puts "The sum : #{ x + y + z }"

puts "The Average Was : #{ ( x + y + z) /3 }"

puts %{    Ruby is a language.}    # equivalent to "Ruby is fun."

puts %Q{     Ruby is     programming     language.  }  # equivalent to " Ruby is fun. "
 
puts %q[      ruby has    widecommunity]  # equivalent to a single-quoted string

puts %!    ls!  # equivalent to back tick command output `ls`


myStr = String.new("This is string")
str1  = myStr.upcase
puts "#{str1}"