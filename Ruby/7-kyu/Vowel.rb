=begin
Return the number (count) of vowels in the given string.

We will consider a, e, i, o, and u as vowels for this Kata.
=end
=begin

Pseudo Code:
Get input "String"
Split string
Iterate every letter
match vowels
if match, count +1
print count out



=end

def getCount(inputStr)
  arry= inputStr.split("")
  p arry

	count=0
  arry.each{|letter| count+=1 if letter == "a"|| letter == "e"||letter == "i"||letter == "o"||letter == "u" }
	p count

end


getCount("apple") #=> 2
getCount("raffael") #=> 3
getCount("ice cream") #=>4

#Best Practice
#p inputStr.count("aeiou")


