=begin
You are going to be given a word. Your job is to return the middle character of the word. If the word's length is odd, return the middle character. If the word's length is even, return the middle 2 characters.

#Examples:

Kata.getMiddle("test") should return "es"

Kata.getMiddle("testing") should return "t"

Kata.getMiddle("middle") should return "dd"

Kata.getMiddle("A") should return "A"
#Input

A word (string) of length 0 < str < 1000 (In javascript you may get slightly more than 1000 in some test cases due to an error in the test cases). You do not need to test for this. This is only here to tell you that you do not need to worry about your solution timing out.

#Output
The middle character(s) of the word represented as a string
=end

def get_middle(s)
  array=s.chars
  a = s.length/2
  l = s.length
  if l==1||l==2
    s
  elsif l.odd?
    array[a]
  else
    l.even?
    "#{array[a]}#{array[a-1]}"
  end

end

 p get_middle("test") #should return "es"
 p get_middle("testing") #should return "t"
 p get_middle("middle") #should return "dd"
 p get_middle("A") #should return "A"
 p get_middle("mmmmmiimmmmm") #ii
 p get_middle("shirlaine") #l
 p get_middle("of") #of


#middle
