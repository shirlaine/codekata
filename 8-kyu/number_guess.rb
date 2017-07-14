#Number Guess Game#

#Prompt player to enter name

puts "Hi there, welcome to the number game."
puts "To start, enter your name"
input= gets.to_s.chomp
puts "Hi #{input}, nice to have you here today."

#Generate a random number from 1 to 100, and store as a target number for the player to guess

target= rand(100)+1
puts target

#keep track of number of guesses player has made, before each guess, let them know how many guesses they have left
num_guess=0

#keep track of whether player has guessed correctly
guess = 0

#loop here
until num_guess == 10 || guess == target


#how many guesses left
remain_guess = 10 - num_guess

puts "you have #{remain_guess} guesses left"

num_guess +=1

#prompt the player to make a guess as to what the target number is

puts "Can you guess what number i am thinking of?"

guess = gets.to_i

#if the players guess is less than the target number or higher, say oops. If correct, say good job

if guess < target
	puts "Oops, your guess is too LOW"
elsif guess > target
	puts "Oops, your guess is too HIGH"
else guess == target
	puts "Good job #{input}! You guessed my number in #{num_guess} guesses!"
	guess == true
end

#if the player runs out of turns without guessing correctly, say, "Sorry"
if remain_guess == 0
	puts "Sorry you ran out of turns and didnt guess my number. My number was #{target}"
end

end


#keep allowing the player to guess til they get it right or run out of turns
#need more practice on nested loops




