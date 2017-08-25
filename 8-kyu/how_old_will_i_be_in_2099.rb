def calculate_age(year_of_birth, current_year)

   year_difference= current_year-year_of_birth
  if year_difference >=2
    "You are #{year_difference} years old."
  elsif year_difference == -1
    "You will be born in 1 year."
  elsif year_difference == 1
    "You are 1 year old."
  elsif year_difference <= -2
    "You will be born in #{-year_difference} years."
  else
    "You were born this very year!"
  end

end

p calculate_age(2012, 2016)#"You are 4 years old."
p calculate_age(1989, 2016)#"You are 27 years old."
p calculate_age(2000, 2090)#"You are 90 years old."
p calculate_age(2000, 1990)#"You will be born in 10 years."
p calculate_age(2000, 2000)#"You were born this very year!"
p calculate_age(900, 2900)#"You are 2000 years old."
p calculate_age(2010, 1500)#"You will be born in 510 years."
p calculate_age(2011, 2012)#"You are 1 year old."
p calculate_age(2000, 1999)#"You will be born in 1 year."
