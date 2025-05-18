#Ruby HASHES are more advanced collections of data and are similar to objects in JavaScript and dictionaries in Python if you’re familiar with those. The easiest way to define a hash is by writing a hash literal with curly braces. Keys and values are associated to each other by the "hash rocket" operator "=>":
my_hash = {
  "a random word" => "ahoy",  #String used as a key
  "Dorothy's math test score" => 94,
  "an array" => [1, 2, 3],
  "an empty hash within a hash" => {},
  9 => "nine",        #Integer used as a key
  :six => 6           #Symbol used as a key
}
#Also, just like we did with ARRAYS, we can create a new hash with the .new method on the Hash class:
my_hash = Hash.new
my_hash               #=> {} (the created hash is empty)

#After we've created the hashes, we can access the values the same way we would with an array:
shoes = {
  "summer" => "sandals",
  "winter" => "boots"
}

shoes["summer"]   #=> "sandals". If the key we asked for didn't exist, we'd get nil returned. Since this may be problematic, we can use the .fetch method:
shoes.fetch("hiking")   #=> KeyError: key not found: "hiking"

#We can either add or edit an existsing value by simply calling the key, and setting the value:
shoes["fall"] = "sneakers"

shoes     #=> {"summer"=>"sandals", "winter"=>"boots", "fall"=>"sneakers"}
#And to remove data, we should use the .delete hash method:
shoes.delete("summer")    #=> "flip-flops"
shoes                     #=> {"winter"=>"boots", "fall"=>"sneakers"}

#A couple of useful methods that are specific to hashes are the #keys and #values methods, which very unsurprisingly return the keys and values of a hash, respectively. Note that both of these methods return arrays:
books = {
  "Infinite Jest" => "David Foster Wallace",
  "Into the Wild" => "Jon Krakauer"
}

books.keys      #=> ["Infinite Jest", "Into the Wild"]
books.values    #=> ["David Foster Wallace", "Jon Krakauer"]

#In practice, we shouldn't use strings as keys for our hashes, but rather symbols. Symbols look better, they are immutable & if you benchmark string keys vs symbols keys you will find that string keys are about 1.70x slower.
# 'Rocket' syntax
american_cars = {
  :chevrolet => "Corvette", #Notice that we get separate colors on keys and values now
  :ford => "Mustang",
  :dodge => "Ram"
}
puts american_cars
# 'Symbols' syntax
japanese_cars = {
  honda: "Accord",  #Notice we don't need the rocket operator and we save some keystrokes on every definition
  toyota: "Corolla",
  nissan: "Altima"
}
puts japanese_cars
#We'll still need to use the standard symbol syntax when trying to access a value. In other words, regardless of which of the above two syntax options we use when creating a hash, they both create symbol keys that are accessed the same way:
american_cars[:ford]    #=> "Mustang"
japanese_cars[:honda]   #=> "Accord"
