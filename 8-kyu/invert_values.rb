=begin

Given a set of numbers, return the additive inverse of each. Each positive becomes negatives, and the negatives become positives.

invert([1,2,3,4,5]) == [-1,-2,-3,-4,-5]
invert([1,-2,3,-4,5]) == [-1,2,-3,4,-5]
invert([]) == []
You can assume that all values are integers.

=end

def invert(list)

#interate through array and map the negative integer onto original integer
  p list.map {|x| x/-1}

end


invert([1,2,3,4,5])
invert([1,2,-3,4,5])
invert([0])

=begin
Test.assert_equals(invert([1,2,3,4,5]),[-1,-2,-3,-4,-5])
Test.assert_equals(invert([1,-2,-3,4,5]),[-1,2,-3,4,-5])
Test.assert_equals(invert([0]),[0])

=end


