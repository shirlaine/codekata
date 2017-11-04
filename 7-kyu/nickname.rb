def nick_name(name)

  if name.length < 4
    "Error: Name too short"
  elsif name[2].end_with?("a", "e", "i", "o", "u")
    name[0..3]
  else
    name[0..2]
  end

end

p nick_name("Robert")
p nick_name("Kimberly")
p nick_name("Jeannie")
p nick_name("Douglas")
p nick_name("Gregory")

