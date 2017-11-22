=begin
Nathan loves cycling.

Because Nathan knows it is important to stay hydrated, he drinks 0.5 litres of water per hour of cycling.

You get given the time in hours and you need to return the number of litres Nathan will drink, rounded to the smallest value.

For example:

time = 3 ----> litres = 1

time = 6.7---> litres = 3

time = 11.8--> litres = 5
=end

def litres (time)

p (time*0.5).floor

end

litres(3) # => litres = 1
litres(6.7) # => litres = 3
litres(11.8) # => litres = 5
litres(12.3) # => litres = 6

=begin
Sample Test
Test.describe("Basic tests") do
Test.assert_equals(litres(3), 1)
Test.assert_equals(litres(12.3, 6)

=end