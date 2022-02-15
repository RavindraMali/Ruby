=begin 
Ruby is a pure object-oriented language and everything appears to Ruby as an object. Every value in Ruby is an object, even the most primitive things: strings, numbers and even true and false. Even a class itself is an object that is an instance of the Class class.

A class is used to specify the form of an object and it combines data representation and methods for manipulating that data into one neat package. The data and methods within a class are called members of the class.
Ruby Class Definition

When you define a class, you define a blueprint for a data type. This doesn't actually define any data, but it does define what the class name means, that is, what an object of the class will consist of and what operations can be performed on such an object.

A class definition starts with the keyword class followed by the class name and is delimited with an end. For example, we defined the Box class using the keyword class as follows −
=end
class Box
    def initialize(w,h)
        @width, @height = w, h 
    end
    def printWidth
        @width
    end
    def printHeight
        @height
    end
end

=begin
 The name must begin with a capital letter and by convention names that contain more than one word are run together with each word capitalized and no separating characters (CamelCase).
 Define Ruby Objects
A class provides the blueprints for objects, so basically an object is created from a class. We declare objects of a class using new keyword. Following statements declare two objects of class Box
=end

box1 = Box.new(20,10)
box2 = Box.new(50,5)

=begin 
The instance Variables

The instance variables are kind of class attributes and they become properties of objects once objects are created
 using the class. Every object's attributes are assigned individually and share no value with other objects.
 They are accessed using the @ operator within the class but to access them outside of the class we use public methods,
  which are called accessor methods. If we take the above defined class Box then @width and @height are 
  instance variables for the class Box.

The accessor & setter Methods

To make the variables available from outside the class, they must be defined within accessor methods, 
these accessor methods are also known as a getter methods. Following example shows the usage of accessor methods
=end

x = box1.printHeight()
y = box1.printWidth()

puts "Product : #{x * y}"

x = box2.printWidth()
y = box2.printHeight()

puts "Product : #{x * y}"