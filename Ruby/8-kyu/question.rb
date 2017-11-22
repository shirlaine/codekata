def first_non_consec_number(x)

x.each_with_index.select {|i, j| p i if i+1 != x[j+1] }

end

first_non_consec_number([2,3,4,5,7])
#first_non_consec_number([])
first_non_consec_number([1,2,3,6])

 #x.each_with_index {|i, j| puts "#{i}" if i++1 == x[j]}
1+ x[j+1]
