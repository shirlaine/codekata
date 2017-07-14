=begin

Convert number to reversed array of digits

Given a random number:

You have to return the digits of this number within an array in reverse order.

Example:

348597 => [7,9,5,8,4,3]

=end

def digitize(n)
 
#convert to string, reverse and split to array 
arry= n.to_s.reverse.split('')

#map string to integer in array
p arry.each.map{|x| x.to_i}


end

digitize(1234) # => [4,3,2,1]
digitize(348591) # => [1, 9, 5, 8, 4, 3]

=begin
Sample Test
Test.assert_equals(digitize(1234),[4,3,2,1])
=end