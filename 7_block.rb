# block 

def test
    puts "inside block 1"
    yield
    puts "insde block 2"
    yield
    puts "inside block 3"
end

test { puts "out side block" }


def nested
    puts "nasted"
    yield 10
    puts "nasted"
    yield 100
    puts "nasted"
end

nested { |i| puts "value : #{i}" }