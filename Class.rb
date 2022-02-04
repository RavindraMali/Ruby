=begin
Ruby is a perfect Object Oriented Programming Language. The features of the object-oriented programming language include −

    Data Encapsulation
    Data Abstraction
    Polymorphism
    Inheritance

These features have been discussed in the chapter Object Oriented Ruby.

An object-oriented program involves classes and objects. A class is the blueprint from which individual objects are created. In object-oriented terms, we say that your bicycle is an instance of the class of objects known as bicycles.

Take the example of any vehicle. It comprises wheels, horsepower, and fuel or gas tank capacity. These characteristics form the data members of the class Vehicle. You can differentiate one vehicle from the other with the help of these characteristics.

A vehicle can also have certain functions, such as halting, driving, and speeding. Even these functions form the data members of the class Vehicle. You can, therefore, define a class as a combination of characteristics and functions.

A class Vehicle can be defined as −

Class Vehicle {

   Number no_of_wheels
   Number horsepower
   Characters type_of_tank
   Number Capacity
   Function speeding {
   }
   
   Function driving {
   }
   
   Function halting {
   }
}
------------------------------------------------------------------------------------------------
=end

=begin
    class is a ruby reserved word to create class
    Person is class name
=end
class Person          
    @@count_person = 0                              # @@ used to declare global variable, global variables are accessable out side of class
=begin
    def is reserved key ward of Ruby
    def is used to define a method in Ruby         
=end
    def initialize(id,name,gender,age)              # id,name,gender,age are loal variables
        @person_id = id                             # @ used to declare local variable 
        @person_name = name                         # Instance variables are available across methods for any particular instance or object. 
        @person_gender = gender                     # That means that instance variables change from object to object. 
        @person_age = age                           # Instance variables are preceded by the at sign (@) followed by the variable name.
    
        @@count_person+=1                           # increment global value count
    end                                             # end initialize emethod   ,  end - is used to terminate the block of method

    

    # setter method to set person_id class member
    def setId=(value)
        @person_id = value
    end

    # setter method to set person_name class member
    def setName=(value)
        @person_name = value
    end

    # setter method to set person_gender class member 
    def setGender=(value)
        @person_gender = value
    end

    #setter method to set person_age class member
    def setAge=(value)
        @person_age = value
    end

    # getter method to get person_id 
    def getId
        @person_id
    end

    # getter method to get person_name
    def getName
        @person_name
    end

    # getter method to get person_gender
    def getGender
        @person_gender
    end

    # getter method to get person_age
    def getAge
        @person_age
    end

=begin
        method to return all details of person class 
=end
    def getPersonDetails
        print "\n\tPerson ID     : #{@person_id}"
        print "\n\tPerson Name   : #{@person_name}"
        print "\n\tPerson Gender : #{@person_gender}"
        print "\n\tPerson Age    : #{@person_age}"
    end

    # tostring method
    def to_s
        "\n\tPerson ID     : #{@person_id}\n\tPerson Name   : #{@person_name}\n\tPerson Gender : #{@person_gender}\n\tPerson Age    : #{@person_age}"
    end

end  # end class 

=begin
     Created Person object using new method  
     new is ruby reserved word it's a built-in method
     person is instance of tpye Person class
=end
person = Person.new(1,"kabir singh","male",27)

person.getPersonDetails   # (.) period is used to access class methods which are public by default

person.setGender="female"
person.setAge=20
person.setName="hina khan"

person.getPersonDetails


# output

=begin

desktop:~/Desktop/ROR$ ruby Class.rb

        Person ID     : 1
        Person Name   : kabir singh
        Person Gender : male
        Person Age    : 27
        
        Person ID     : 1
        Person Name   : hina khan
        Person Gender : female
        Person Age    : 20

=end