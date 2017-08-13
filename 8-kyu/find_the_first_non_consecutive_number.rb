=begin

Your task is to find the first element of an array that is not consecutive.

E.g. If we have an array [1,2,3,4,6,7,8] then 1 then 2 then 3 then 4 are all consecutive but 6 is not, so that's the first non consecutive number.

If the whole array is consecutive then return null

The array will always have at least 2 elements and all the elements will be numbers. The numbers will also all be unique and in ascending order. The numbers could be positive or negative and the first non-consecutive could be either too!

=end

#iterate through array
 	#find the first number that is not x, x+1, x+2, x+3 otherwise x, (x+1), (x-1)+1

 	#|i| i+1 == x[i+1] ?

 	#i= x[0]
 	#i+1 = x[1]
 	#i+2 = x[2]


	#print x[i] if x[i-1]!

#has to be a a loop



def first_non_consec_number(x)

  x.each_with_index do |num, i|

    if x[i+1] != num+1
      return x[i+1]
    end
  end


end

first_non_consec_number([1,2,3,4,6,7,8])
#first_non_consec_number([])
first_non_consec_number([1,2,3,4,5,6,7,8])
#i+1 => 2,3,4,5,7,8,9

#x[j] => 1,2,3,4,6,7,8

#x[j+1] => 2,3,4,6,7,8

