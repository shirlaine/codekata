
def tacofy(word)

taco = {
  "a" => "beef",
  "e" => "beef",
  "i" => "beef",
  "o" => "beef",
  "u" => "beef",
  "t" => "tomato",
  "l" => "lettuce",
  "c" => "cheese",
  "g" => "guacamole",
  "s" => "salsa"
}

  word.downcase!
  taco_array = ['shell']
  taco_letter= word.each_char.to_a

  if taco_letter.count >=1
    taco_letter.each do |el|
      if taco.has_key?(el)
        taco_array << taco[el]
    end
  end
 end

taco_array<< 'shell'

 p taco_array

end


tacofy("")#['shell', 'shell'])
tacofy("a")#['shell', 'beef', 'shell'])
tacofy("ggg")#['shell', 'guacamole', 'guacamolse', 'guacamole', 'shell'])
tacofy("ogl")#['shell', 'beef', 'guacamole', 'lettuce', 'shell'])
tacofy("ydjkpwqrzto")#['shell', 'tomato', 'beef', 'shell'])
tacofy("pPoKbetwdxdyP")
tacofy("'gPwdKfwchvxTAafQNZOhKqPasTAdDCuLHtRNWvxbfmrjdXgLYtcPzSvDjcnwxKoP'")



