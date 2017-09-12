=begin

Your friend Robbie has successfully created an AI that is capable of communicating in English!

Robbie's almost done with the project, however the machine's output isn't working as expected. Here's a sample of a sentence that it outputs:

["this","is","a","sentence"]
Every time that it tries to say a sentence, instead of formatting it in normal English orthography, it just outputs a list of words.

Robbie has pulled multiple all-nighters to get this project finished, and he needs some beauty sleep. So, he wants you to write the last part of his code, a sentencify function, which takes the output that the machine gives, and formats it into proper English orthography.

Your function should:

Capitalise the first letter of the first word.
Add a period (.) to the end of the sentence.
Join the words into a complete string, with spaces.
Do no other manipulation on the words.

=end

def sentencify(words)

  words.map do |word|
    if words.count==1
      word.capitalize.concat(".")
    elsif word==words[0] && word!=word.upcase
       word.capitalize
    elsif
      word==words[words.length-1]
        word.concat(".")
    else
      word
    end
  end.join(" ")
end

p sentencify(["i", "love", "apples"])
p sentencify(["FIELDS","of","CORN","are","to","be","sown"])
p sentencify(["yes"])


