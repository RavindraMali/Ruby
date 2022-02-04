=begin
    Ruby while Statement
    Syntax

    while conditional [do]
    code
    end
=end

$start = 1

$end = 10

while $start < $end do
    print "#{$start}\t"
    $start+=1
end

# print "#$start \n"  while $start < $end  

# untill modifier
puts "While loop :"
$i = 5
$num = 10
begin
   print("\tLoop i = #$i" )
   $i +=1;
end until $i > $num

=begin
    Ruby for Statement
    Syntax

    for variable [, variable ...] in expression [do]
    code
    end
=end
puts "\nFor Loop : "
for i in 10..20
    print "\tValue of I : #{i}"
end
# each looping
(1...20).each do |i|
    print "\t #{i}"
end

=begin
    Ruby break Statement
    Syntax

    break
=end
puts "\nBreak Statement :"
for i in 1...10
    if i > 4
        break
    end
    print "\t #{i}"
end

# next statement

for i in 1..20
    if i >= 5 && i <= 10
        next
    end
    print "\n #{i}"
end