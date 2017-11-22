=begin

Consider a game, wherein the player has to guess a target word. All the player knows is the length of the target word.

To help them in their goal, the game will accept guesses, and return the number of letters that are in the correct position.

Write a method that, given the correct word and the player's guess, returns this number.

For example, here's a possible thought process for someone trying to guess the word "dog":

count_correct_characters("dog", "car"); #0 (No letters are in the correct position)
count_correct_characters("dog", "god"); #1 ("o")
count_correct_characters("dog", "cog"); #2 ("o" and "g")
count_correct_characters("dog", "cod"); #1 ("o")
count_correct_characters("dog", "bog"); #2 ("o" and "g")
count_correct_characters("dog", "dog"); #3 (Correct!)
The caller should ensure that the guessed word is always the same length as the correct word, but since it could cause problems if this were not the case, you need to check for this eventuality:

#Raise an error if the two parameters are of different lengths.
You may assume, however, that the two parameters will always be in the same case.



Step 1:
Input=> string => "dog" (correct),"dag"(guess)
Output=> integer => number of correct alphabets in position (#2)

Step 2:

-convert both strings to separate array (count and guess array)
-lengths must be the same (count.chars.count == guess.chars.count)
-loop to loop through both arrays
   -iterate through array 1, match first index with array 2 a[0]=b[0]
   -return 1 to score
   -if all match, return "Correct"

=end

def count_correct_characters(correct, guess)

  MatchCharacters.new(correct,guess).process

end

class MatchCharacters

  def initialize(computer, user)

    @computer = computer
    @user = user
    @count = 0
    @index = 0
    @score = 0

  end

  def process

    @computer = @computer.chars  #["d", "o", "g"]
    @user = @user.chars #["d","a", "g"]

    return error if @computer.count != @user.count

    while @count<@computer.count && @count >= 0 do
      @score+=1 if @computer[@index] == @user[@index]
      @index += 1
      @count += 1
    end

     @score
  end



end

p count_correct_characters("dagg", "dagg")
