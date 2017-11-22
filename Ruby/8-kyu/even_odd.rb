=begin
Create a function that takes an integer as an argument and returns "Even" for even numbers or "Odd" for odd numbers.
=end

def even_or_odd(number)

return "Even" if number.even?

return "Odd" if number.odd?


end

even_or_odd(2)
even_or_odd(4)
even_or_odd(0)
even_or_odd(7)


=begin 
Sample test
Test.assert_equals(even_or_odd(2), "Even")
Test.assert_equals(even_or_odd(0), "Even")
Test.assert_equals(even_or_odd(7), "Odd")
Test.assert_equals(even_or_odd(1), "Odd")

Test.assert_equals(even_or_odd(9), "Odd")
=end