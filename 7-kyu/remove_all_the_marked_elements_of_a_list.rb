=begin

We need a method in the Class List that may remove from a given list of integers, all the values contained in a second list. The method remove_() will accept two arguments, a list of an uncertain amount of integers, integer_list and a second list that contains integer values, too, values_list. The method will output a list with all the integers that are not in values_list

Let's see some cases:

l = List()

integer_list =  [1, 1, 2 ,3 ,1 ,2 ,3 ,4]
values_list = [1, 3]
l.remove_(integer_list, values_list) == [2, 2, 4]

integer_list = [1, 1, 2 ,3 ,1 ,2 ,3 ,4, 4, 3 ,5, 6, 7, 2, 8]
lst = [1, 3, 4, 2]
l.remove_(integer_list, values_list) == [5, 6 ,7 ,8]

integer_list = [8, 2, 7, 2, 3, 4, 6, 5, 4, 4, 1, 2 , 3]
lst = [2, 4, 3]
l.remove_(integer_list, values_list) == [8, 7, 6, 5, 1]

=end

l=Array.new()

 class Array

  def remove_(integer_list, values_list)

    values_list.each do |i|
       integer_list.each do |int|
        if integer_list.include?(i)
          integer_list.delete(i)
        end
      end
    end

   integer_list

  end

end
integer_list = [1, 1, 2 ,3 ,1 ,2 ,3 ,4, 4, 3 ,5, 6, 7, 2, 8]
values_list = [1, 3, 4, 2]
l.remove_(integer_list, values_list) == [5, 6 ,7 ,8]

integer_list =  [1, 1, 2 ,3 ,1 ,2 ,3 ,4]
values_list = [1, 3]
l.remove_(integer_list, values_list) == [2, 2, 4]

integer_list = [4, 4, 2 , 3]
values_list  = [2, 2, 4, 3]
l.remove_(integer_list, values_list) == []

integer_list = [4, 4, 2]
values_list  = [2, 2, 4]
l.remove_(integer_list, values_list) == []
