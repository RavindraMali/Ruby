=begin
Ruby each Iterator

The each iterator returns all the elements of an array or a hash.
Syntax

collection.each do |variable|
   code
end

Executes code for each element in collection. Here, collection could be an array or a ruby hash.
=end

array = [1,2,3,4,5,6,7]

array.each do |element|
    puts element
end
=begin
OUTPUT
pcs200@pcs200-desktop:~/Desktop/ROR$ ruby 13_iterator.rb
1
2
3
4
5
6
7
=end

=begin
Ruby collect Iterator

The collect iterator returns all the elements of a collection.
Syntax

collection = collection.collect

=end

a = [1,2,3,4,5,6,7,8,9,10]
b = Array.new
b = a.collect

b.each do |element|
    puts element
end
=begin
OUTPUT
1
2
3
4
5
6
7
8
9
10
=end

c = a.collect { |x| 10 * x }

c.each do |element|
    puts element
end
=begin 
10
20
30
40
50
60
70
80
90
100
=end