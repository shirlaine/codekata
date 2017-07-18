=begin

Create a function that takes a number as an argument and returns a grade based on that number.

Score	Grade
Anything greater than 1 or less than 0.6	'F'
0.9 or greater	"A"
0.8 or greater	"B"
0.7 or greater	"C"
0.6 or greater	"D"

=end

def grader(num)
	if num > 1 || num <0.6
		puts "F"

	elsif num >= 0.9

		puts "A" 

	elsif num >= 0.8

	puts "B"  

	elsif num >= 0.7

	puts "C"

	else puts "D" if num >= 0.6

	end

end

grader(0.9) # == "A"

grader(0.3) # == "F"

grader(234) # == "F"

grader(0.75) # == "C"

grader(0) # == "F"


=begin

Sample Test

Test.assert_equals(grader(0.9), "A")

=end