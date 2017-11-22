=begin
Write a function that returns a string in which firstname is swapped with last name.

nameShuffler('john McClane'); => "McClane john"

=end

def nameShuffler(string)

p "#{string.split.reverse.join(" ").to_s}"


end

nameShuffler('john McClane')
nameShuffler('Larry Anderson')


=begin

Sample Test

Test.assert_equals(name_shuffler('john McClane'),'McClane john')
Test.assert_equals(name_shuffler('Mary jeggins'),'jeggins Mary')
Test.assert_equals(name_shuffler('tom jerry'),'jerry tom')

=end