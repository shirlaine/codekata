=begin

You've just recently been hired to calculate scores for a Dart Board game!

Scoring Specifications:
0 points -radius above 10
5 points- radius between 5 and 10 inclusive
10 points- radius less than 5

If all radiuses are less than 5, award 100 Bonus Points

Write a function that accepts an array of radiuses(can be integers and/or floats), and returns a total score using the above specfication.
An empty array should return 0

Examples
scoreThrows([1,5,11]) => returns 15
scoreThrows([15,20,30]) => returns 0
scoreThrows([1,2,3,4]) => returns 40

=end

def scoreThrows(radiuses)

  new_array=[]
  score =0

  radiuses.each do |x|
    if x > 10
      new_array.push(0)
    elsif x>=5 && x<=10
      new_array.push(5)
    else x<5 && x>0
      new_array.push(10)
    end
  end
    if new_array.empty?
      score =0
    elsif new_array.all?{|num| num >=10}
      score +=100
    end

    new_array.each do |x|
      score += x
    end
    score


end

p scoreThrows([1, 5, 11]) #=> returns 15
p scoreThrows([1,2,3,4]) #=> returns 140
p scoreThrows([15,20,30]) #=> returns 0
p scoreThrows([])
p scoreThrows([1,2,3,4,2,1]) #=> returns 160
