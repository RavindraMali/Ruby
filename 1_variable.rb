=begin

Variables are the memory locations, which hold any data to be used by any program.

Ruby Global Variables

Global variables begin with $. Uninitialized global variables have the value nil and produce warnings with the -w option.

=end

$global_var1 

$global_var2 = 100

puts $global_var1 

puts $global_var2


=begin
OutPut

desktop:~/Desktop/ROR$ ruby 1_variable.rb

100 
desktop:~/Desktop/ROR$ ruby -w 1_variable.rb      # use -w to see warning
1_variable.rb:11: warning: possibly useless use of a variable in void context
1_variable.rb:11: warning: global variable `$global_var1' not initialized
1_variable.rb:15: warning: global variable `$global_var1' not initialized

100

=end

# string variables using double quates ""

name  = "john doe"

puts name   # print name variable

puts name.class  # print class of variable name

# string variable using '' quates
address = 'B/723 adajan surat guajarat'

puts address

puts address.class

        # escape sequences  \' \'  to print '' in string
address1 = 'My Address is \'ADDRESS\' ' 

puts address1


# String Methods

# concat - add new string to existing string

puts "Addre".concat("ss")

fname = "Ravindra" 
lname = " Mali"

puts fname.concat(lname)