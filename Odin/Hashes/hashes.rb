# Hashes - array's buff cousin (dictionaries)
# remember this is how you make a symbol :six <- can only be one of these

# Creating a hash
# This is the most basic way of creating a hash using the hash literal {}

=begin
  key 1: "a random word" value 1: ahoy; This key points to the value.
  The values of a hash can be a number, a string, an array, or another hash
  Keys and values are associated with an operator caled the hash rocket =>
=end

my_hash = {
  "a random word" => "ahoy",
  "Dorothy's math test score" => 94,
  "Array" => [1,2,3],
  "an empty hash within a hash" => {}
}

# Same as array, you  can create a new hash by calling ::new method
my_hash = Hash.new
p my_hash #=> {}

# Hash can take in anything pretty much
hash = {9 => "nine", :six => 6}

# Accessing Values
shoes = {
  "summer" => "sandals",
  "winter" => "boots"
}

shoes["summer"] #=> "sandals"

  # if you try to access a key that doesn't exist, it will return nil
  shoes["hiking"] #=> nil

  # Can also use fetch - this will return an error so nil value doesn't go unfound
  shoes.fetch("hiking") #=> throws key error

  # To avoid the error you can give a default value if it doesn't exist
  shoes.fetch("hiking", "hiking boots") #=> hikinh boots

# Adding and changing data

# Add key value pair into hash like this
shoes["fall"] = "sneakers"

shoes #= {
#   "summer" => "sandals",
#   "winter" => "boots",
#   "fall" => "sneakers"
# }

# Removing data

# Deleting is done using the delete method, returns vlaye of key-value pair that was deleted from hash
shoes.delete("summer") #=> deletes and returns sandals
shoes #= {
#   "winter" => "boots",
#   "fall" => "sneakers"
# }


# Hash Methods
# All array methods work on hashes in ruby

# Useful methods: .keys .values

abilities = {
  "Infinite Void" => "JJK"
  "Bankai" => "Bleach"
}

books.keys    #=> ["Infinite Void","Bankai"]
books.values  #=> ["JJK","Bleach"]

# Merging two hashes
# when two hashes have the key that is the same, hash that is getting passed through overwrites the hash using the method
hash1 = {"a" => 100, "b" => 200}
hash2 = {"b" => 256, "c" => 300}

hash1.merge(hash2) #=> {"a" => 100, "b" => 256, "c" => 300}

# Symbols as hash keys
# Symbols are mainly used as keys. They allow cleaner syntax

# 'Rocket' syntax
american_cars = {
  :chevrolet => "Corvette",
  :ford => "Mustang",
  :dodge => "Ram"
}

# 'Symbols Syntax'
japanese_cars = {
  honda: "Accord",
  toyota: "Corolla",
  nissan: "Altima"
}

# Finish these hash functions
def create_favorite_hash(color, number)
  # return a hash with the following key/value pairs:
  # key of color (as a symbol) with value of the color argument
  # key of number (as a symbol) with the value of the number argument
  {
    color: color,
    number: number,
  }
end

def favorite_color(favorite_list)
  # return the value of the color key
  favorite_list[:color]
end

def favorite_number(favorite_list)
  # use #fetch to return the value of the number key or 42 if the key is not found
  favorite_list.fetch(number: , "42")
end

def update_favorite_movie(favorite_list, movie)
  # Step 1: add/update the key of movie (as a symbol)
  favorite_list[:movie] = movie
  # Step 2: return the hash (because Step 1 returns the value of the movie key)
  favorite_list
end

def remove_favorite_number(favorite_list)
  # Step 1: delete the number data
  favorite_list.delete(:number)
  # Step 2: return the hash (because Step 1 returns the value of the number key)
  favorite_list
end

def favorite_categories(favorite_list)
  # return the keys of favorite_list
  favorite_list.keys
end

def favorite_items(favorite_list)
  # return the values of favorite_list
  favorite_list.values
end

def merge_favorites(original_list, additional_list)
  # merge the two hashes: original_list and additional_list
  original_list.merge(additional_list)
end
