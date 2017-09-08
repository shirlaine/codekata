=begin
Happy Holidays fellow Code Warriors!

It's almost Christmas Eve, so we need to prepare some milk and cookies for Santa! Wait..when exactly did we need to do that?

Time for Milk and Cookies

Write a function timeForMilkAndCookies (time_for_milk_and_cookies in Ruby) that accepts a Date object, and returns true if it's Christmas Eve (December 24th), false otherwise. Keep in mind Javascript's Date month is 0 based, while Ruby's Date month isn't.

time_for_milk_and_cookies( Date.new( 2013, 12, 24 ) ) # December 24, 2013 => returns true
time_for_milk_and_cookies( Date.new( 2013, 1, 23 ) ) # January 23, 2013 => returns false
time_for_milk_and_cookies( Date.new( 3000, 12, 24 ) ) # December 24, 3000 => returns true

=end

require'Date'

def time_for_milk_and_cookies date

  xmas = Date.new(2022,12,24)

  if date.strftime("%m %d") == xmas.strftime("%m %d")
    true
  else false
  end

end


p time_for_milk_and_cookies( Date.new(2013, 12, 24)) # December 24, 2013 => returns true
p time_for_milk_and_cookies( Date.new( 2013, 1, 23 ) ) # January 23, 2013 => returns false
p time_for_milk_and_cookies( Date.new( 3000, 12, 24 ) ) # December 24, 3000 => returns true
