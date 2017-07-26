=begin
Write a function that returns a string in which firstname is swapped with last name.

nameShuffler('john McClane'); => "McClane john"

=end

def nameShuffler(string)

puts "#{string.split.reverse.join(" ")}"


end

nameShuffler('john McClane')
nameShuffler('Larry Anderson')