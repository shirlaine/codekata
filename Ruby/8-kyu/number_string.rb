def get_number_from_string(s)
  
  s.split('').select {|x| p x.to_i if x =~/[0123456789]/ }

  #another solution
  #s.chars.each.select{|x| p x if x =~/[0123456789]/}.join('').to_i

  end

 

get_number_from_string("he56ll0")
get_number_from_string("one1 two2 three3 four4 five5")