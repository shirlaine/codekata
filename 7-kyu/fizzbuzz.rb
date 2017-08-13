=begin

Return an array containing the numbers from 1 to N, where N is the parametered value. N will never be less than 1.

Replace certain values however if any of the following conditions are met:

If the value is a multiple of 3: use the value 'Fizz' instead
If the value is a multiple of 5: use the value 'Buzz' instead
If the value is a multiple of 3 & 5: use the value 'FizzBuzz' instead

=end

def fizzbuzz(n)
  arry = []
 (1..n).select do|num|
    if num%15 ==0
      arry.push"FizzBuzz"
    elsif num%5==0
      arry.push"Buzz"
    elsif num%3==0
      arry.push("Fizz")
    else arry.push(num)
    end
 end
    arry
end

fizzbuzz(20)
fizzbuzz(35)

=begin
SampleTest

describe 'Fizzbuzz' do
  it 'example one' do
    expected = [1, 2, 'Fizz', 4, 'Buzz', 'Fizz', 7, 8, 'Fizz', 'Buzz']
    Test.assert_equals fizzbuzz(10), expected
  end
end
=end
