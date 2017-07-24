
=begin
Given 2 strings, a and b, return a string of the form short+long+short, 
with the shorter string on the outside and the longer string on the inside. 
The strings will not be the same length, but they may be empty (length0).
=end

def solution(a, b)

if a.length > b.length
	 p b + a + b
else 
	 p a + b + a
end

end

solution("1", "22") # => 1221
solution("22", "1") # => 1221


=begin

Sample Test

describe "Solution" do
  it "should test for something" do
    Test.assert_equals("actual", "expected", "This is just an example of how you can write your own TDD tests")
  end
end

=end
