=begin

Create a function that takes a string and returns that string with the first half lowercased and the last half uppercased.

eg: foobar == fooBAR

If it is an odd number then 'round' it up to find which letters to uppercase. See example below.

sillycase("brian")
//         --^-- midpoint
//         bri    first half (lower-cased)
//            AN second half (upper-cased)

=end

def sillycase(silly)
  if silly.length.even?
    middle = (silly.length) /2
    silly[0..middle-1].downcase + silly[middle..-1].upcase
  else
    middle_odd = (silly.length + 1)/2
    silly[0..middle_odd-1].downcase + silly[middle_odd..-1].upcase
  end
end

p sillycase('foobar') # "fooBAR"
p sillycase('codewars') # "codeWARS"
p sillycase('SCOTland') # 'scotLAND'
p sillycase('WeLlDoNe') # 'wellDONE'
p sillycase('brian') #'briAN'
