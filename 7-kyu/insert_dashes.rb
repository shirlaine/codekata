=begin
Write a function insertDash(num)/InsertDash(int num) that will insert dashes ('-') between each two odd numbers in num. For example: if num is 454793 the output should be 4547-9-3. Don't count zero as an odd number.
=end

def insertDash(num)

  integer_array= num.to_s.chars.map {|string| string.to_i}
  count= 0
  index=0
  num_string=""

while count<integer_array.length-1 do
     if integer_array[index+1]%2==1&&integer_array[index]%2==1
      num_string<< "#{integer_array[index]}-"
    else
      num_string<< "#{integer_array[index]}"
    end
  count+=1
  index+=1
end

 p num_string << integer_array.last.to_s
end

insertDash(454793) #4547-9-3

