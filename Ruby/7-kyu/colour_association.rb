=begin

Colour plays an important role in our lifes. Most of us like this colour better then another. User experience specialists believe that certain colours have certain psychological meanings for us.

You are given a 2D array, composed of a colour and its 'common' association in each array element. The function you will write needs to return the colour as 'key' and association as its 'value'.

For example:

array = ["white", "goodness"] #returns {'white'=>'goodness'}

=end


def colour_association(arr)

  hash_array =[]
  arr.each_slice(2) do |a|
     a.each do |k,v|
        hash_array.push(Hash[k, v])
     end
  end
  hash_array

end

p colour_association([["white", "goodness"], ["red", "fire"]]) #returns [{'white'=>'goodness'},{"red", "fire"}]


