=begin
    Methods in ruby

Ruby methods are very similar to functions in any other programming language. Ruby methods are used to bundle one or more repeatable statements into a single unit.

Method names should begin with a lowercase letter. If you begin a method name with an uppercase letter, Ruby might think that it is a constant and hence can parse the call incorrectly.

Methods should be defined before calling them, otherwise Ruby will raise an exception for undefined method invoking.
    Syntax

    def method_name [( [arg [= default]]...[, * arg [, &expr ]])]
    expr..
    end

=end

def hello                                       # method without parameteras
    puts "hello Ruby"
    print "It's famous for web development"
end

hello                                           # method call

def addition ( var1, var2)                      # method with parameters
    print "\n\tAddition : #{var1 + var2}" 
end


addition(10,20)                                  # method call
addition 600, 20                                 # another way to call method in ruby

def Addition (var1 =10, var2=20)
    print "\n\tAddtion : #{var1 + var2}"
end

Addition()                                       # method call

Addition 300, 20                                 # method call   

def language(l1="ruby", l2="c++")               # method with parameters and default values
    puts "\n\t#{l1}"
    puts "\n\t#{l2}"
end

language
language "c","Python"


# return statement to return something from method

def addOperation(var1, var2)
    print "\n\tVariable 1 : #{var1}"
    print "\n\tVariable 2 : #{var2}"
    return var1 + var2
end

x = 200
y = 100

ans = addOperation(x,y)

puts "\n\tAdditon : #{ans}"


def test
    i = 10
    j = 20
    k = 30
    return i,j,k
end

var3 = test 
puts var3

# variable number of parameter

def params (*test)
    puts "\n\tThis number of parameters is #{test.length}\n"
    for i in 0..test.length
        print "\t #{test[i]}"
    end
end

params "c","c++",1,10,"ruby",true,false
params("1",1,"ruby","c++","python",true,100-1,"test",100)


# class methods

class Vehicle
    def fun
        print "\n\tFunction call"
    end
    def Vehicle.func 
        print "\n\tFunction class method call"
    end
end

vehicle =Vehicle .new
vehicle.fun
Vehicle.func

=begin

OUTPUT :

desktop:~/Desktop/ROR$ ruby 6_methods.rb
hello Ruby
It's famous for web development
        Addition : 30
        Addition : 620
        Addtion : 30
        Addtion : 320
        ruby

        c++

        c

        Python

        Variable 1 : 200
        Variable 2 : 100
        Additon : 300
10
20
30

        This number of parameters is 7
         c       c++     1       10      ruby    true    false   
        This number of parameters is 9
         1       1       ruby    c++     python  true    99      test    100     
        Function call
        Function class method call
=end