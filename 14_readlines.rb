file = IO.readlines("input.txt")

file.each do |line|
    puts line
end

IO.foreach("input.txt"){ |block| puts block}

# Renaming and Deleting Files

# File.rename("input.txt","inputs.txt")

# File.rename("inputs.txt","input.txt")

# delete file

File.delete("input.txt")