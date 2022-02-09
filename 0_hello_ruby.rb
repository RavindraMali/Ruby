puts "Hello Ruby"

print "\n\tWelcome to the world of Ruby Language."

print "\n\t\tRuby On Rails\n"


class Hello
    def initialize ( name )
        @name = name
    end

    def salute 
        puts "Hello, #{@name}"
    end
end
hello = Hello.new("Ruby")

hello.salute

ravindra = Hello.new("Ravindra")

ravindra.salute