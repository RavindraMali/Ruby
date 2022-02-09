=begin
Ruby provides a whole set of I/O-related methods implemented in the Kernel module. All the I/O methods are derived from the class IO.

The class IO provides all the basic methods, such as read, write, gets, puts, readline, getc, and printf.

This chapter will cover all the basic I/O functions available in Ruby. For more functions, please refer to Ruby Class IO.
The puts Statement

In the previous chapters, you have assigned values to variables and then printed the output using puts statement.

The puts statement instructs the program to display the value stored in the variable. This will add a new line at the end of each line it writes.

Example
=end

var1 = "the is value of var1"

puts var1
# the is value of var1

puts "Enter value : "
var2 = gets
puts var2

=begin 
OUTPUT
Enter value : 
ravindra
ravindra
=end


=begin
The putc Statement

Unlike the puts statement, which outputs the entire string onto the screen, the putc statement can be used to output one character at a time.
Example

The output of the following code is just the characte
=end

var3 = "Ruby"
putc var3
# R

=begin 
The print Statement

The print statement is similar to the puts statement. The only difference is that the puts statement goes to the next line after printing the contents, whereas with the print statement the cursor is positioned on the same line.
Example
=end

print var1

print "Good morning"
# output : the is value of var1Good morning

=begin

Opening and Closing Files

Until now, you have been reading and writing to the standard input and output. Now, we will see how to play with actual data files.
The File.new Method

You can create a File object using File.new method for reading, writing, or both, according to the mode string. Finally, you can use File.close method to close that file.
Syntax

aFile = File.new("filename", "mode")
   # ... process the file
aFile.close


=end
print "\n\t File IO \n"
file = File.new("input.txt","r")
    if file
        content= file.sysread(20)
        puts content
    else
        puts "unable to open file!"
    end
=begin
OUTPUT
   File IO 
this is simple input
=end

file1 =  File.new("input.txt","r+")
if file1
    puts "enter file content : "
    content = gets
    file1.syswrite(content)
else
    put "unable to open file !"
end