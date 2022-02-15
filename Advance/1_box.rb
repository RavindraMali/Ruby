class Box
    # Initialize our class variables
   @@count = 0
   def initialize(w,h)
      # assign instance avriables
      @width, @height = w, h
      @@count += 1
   end

    def setWdith=(value)
        @width = value
    end

    def setHeight=(value)
        @height = value
    end

    def getWidth
        @width
    end

    def getHeight
        @height
    end
    def getArea
        @width * @height
    end
    def to_s
        "\n\t#{@width} * #{@height} = #{@width * @height}\n"
    end
    def self.printCount()
        puts "\n\tBox count : #{@@count}"
    end
end

box = Box.new(15,20)
box1 = Box.new(1,2) # test
puts "\n\tWidth of box: #{box.getWidth}"
puts "\n\tHeight of Box : #{box.getHeight}"
puts "#{box}"
puts "\n\tArea of Box : #{box.getArea}"
puts box              # look into to_s method 
 
Box.printCount

=begin 
OUTPUT
pcs200@pcs200-desktop:~/Desktop/ROR/Advance$ ruby 1_box.rb

         Width of box: 15

        Height of Box : 20

        15 * 20 = 300

        15 * 20 = 300
=end

=begin 
Access Control

Ruby gives you three levels of protection at instance methods level, which may be public, private, or protected. Ruby does not apply any access control over instance and class variables.

    Public Methods − Public methods can be called by anyone. Methods are public by default except for initialize, which is always private.

    Private Methods − Private methods cannot be accessed, or even viewed from outside the class. Only the class methods can access private members.

    Protected Methods − A protected method can be invoked only by objects of the defining class and its subclasses. Access is kept within the family.

Following is a simple example to show the syntax of all the three access modifiers
=end


# define a class
class BoxA
    # constructor method
    def initialize(w,h)
       @width, @height = w, h
    end
 
    # instance method by default it is public
    def getArea
       getWidth() * getHeight
    end
 
    # define private accessor methods
    def getWidth
       @width
    end
    def getHeight
       @height
    end
    # make them private
    private :getWidth, :getHeight
 
    # instance method to print area
    def printArea
       @area = getWidth() * getHeight
       "Big box area is : #@area"
    end
    # make it protected
    protected :printArea

    def to_s
        printArea
    end
 end
 
 # create an object
 box3 = BoxA.new(10, 20)
 
 # call instance methods
 a = box3.getArea()
 puts "Area of the box is : #{a}"
 
 # try to call protected or methods
#  box3.printArea                           #  will raise error
 puts "\n\t#{box3}"