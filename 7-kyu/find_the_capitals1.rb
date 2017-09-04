=begin

Write a method that takes an array of hashes with two keys each: country or state, and capital. Keys may be symbols or strings

The method should return an array of sentences declaring the state or country and its capital.

Examples
state_capitals = [{state: 'Maine', capital: 'Augusta'}]
capital(state_capitals)[0] # returns "The capital of Maine is Augusta"

country_capitals = [{'country' => 'Spain', 'capital' => 'Madrid'}]
capital(country_capitals)[0] # returns "The capital of Spain is Madrid"

mixed_capitals: [{"state" => 'Maine', capital: 'Augusta'}, {country: 'Spain', "capital" => "Madrid"}]
capital(mixed_capitals)[0] # returns "The capital of Maine is Augusta"
=end

def capital(capitals_hash_array)

  capitals_hash_array.map do |country_hash|
    country_state_name = country_hash[:country]||country_hash["country"]||country_hash[:state]||country_hash["state"]
    capital_name = country_hash[:capital]||country_hash["capital"]
    "The capital of #{country_state_name} is #{capital_name}"
  end

end

capitals_hash_array = ([{"state" => 'Maine', capital: 'Augusta'}, {country: 'Spain', "capital" => "Madrid"}])
p capital(capitals_hash_array)[0] # returns "The capital of Maine is Augusta"

=begin
Input=> Array of Hashes, 2 diff Keys, country/state, capital, all keys maybe symbols or strings
Output=> Array

Input :
state_capitals = [{key: 'value' }, {'key'=> 'value' }]
key[:value]

Output:
["The capital of #{country_name} or #{state_name} is #{capital_name}"]

Step 1: Search documentation for arrays and hashes

Step 2:
What i need from output:
country_name =
state_name=
capital_name=

Step 3:
Caveat
symbols and strings as key in hashes return different values
i.e., hash[:country] will return country value if hash[:country] is searched but
"country"=>"china", will return nil

Step 4:
Find values:
country_name: capitals_hash_array.map {|hash| hash[:country]||hash["country"]}
state_name: capitals_hash_array.map{|hash| hash[:state||hash["state"]}
country_state_name: capitals_hash_array.map{|hash|hash[:country]||hash["country"]||hash[:state]||hash["state"]}
mixed_capital: capitals_hash_array.map{|hash| hash[:capital]||hash:["capital"]}

Step 5:
Sequence:
You need it to
-run through the hash array once (hash in array form, [{  }, {  }, {  }])
-extract out the country or state ( in either symbol of string)
- extract out the capital ( in either symbol of string)
- print it into a sentence, in an array( map will fix this)

Solution
capital_hash_array.map do |country_hash|
    country_state_name = country_hash[:country]||country_hash["country"]||country_hash[:state]||country_hash["state"]
    capital_name = country_hash[:capital]||country_hash["capital"]
  "The capital of #{country_state_name} is #{capital_name}"

end


=end

