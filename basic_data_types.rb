=begin

  Notes:
  - Ruby is strongly object-oriented language
  - Everything in ruby is an object

  Data Types:
  - Numbers(integer and float)
  - Strings
  - Symbols
  - Booleans (true, false, nil)

=end

# NUMBERS

# Addition
1 + 1 #=> 2

# Subtraction
2 - 1 #=> 1

# Multiplication
2 * 2 #=> 4

# Division
10 /5  #=> 2

#Exponent
2 ** 2 #=> 4
3 ** 4 #=> 81

# Modulus
8 % 2 #=> 0
10 % 4 #=> 2

# Integers and Floats

# Will return integer
17 / 5 #=> 3

# Will return float, as long as one number has decimal
17 / 5.0 #=> 3.4

# Convert into to float:
13.to_f #=> 13.0

# Convert float to int
13.0.to_i #=> 13
13.9.to_i #=> 13

# even?
6.even? #=> true
7.even? #=> false

# odd?
6.odd? #=> false
7.odd? #=> true

# STRINGS

# Different ways to contactenate Strings

#  Using + operator:
"Welcome " + " to " + " the club!" #=> "Welcome to the club!"

# Using shovel operator:
"Welcome " << " to " << " the club!" #=> "Welcome to the club!"

# Using concat method:
"Welcome".concat("to ").concat(" the club!") #=> "Welcome to the club!"

# Substrings

"hello"[0] #=> "h"
"hello"[0..1] #=> "he"
"hello"[0,4] #=> "hell"
"hello"[-1] #=> "o"

# Interpolation - Always use double quotes
name = "Noureddine"

puts "Hello, #{name}" #=> "Hello, Noureddine"
puts 'Hello, #{name}' #=> "Hello, #{name}"

# String methods

# Capitalize
"hello".capitalize #=> "Hello"

# Include?
"hello".include?("lo") #=> true
"hello".include?("z") #=> false

# Uppercase
"hello".upcase #=> "HELLO"

# Downcase
"Hello".downcase #=> "hello"

# Empty?
"hello".empty? #=> false
"".empty? #=> true

# Length
"hello".length #=> 5

# Reverse
"hello".reverse #=> "olleh"

# Split
"hello world".split #=> ["hello", "world"]
"hello".split("") #=> ["h", "e", "l", "l", "o"]

# Strip
" hello, world   ".strip  #=> "hello, world"

# Symbol - symbols are stored in memory once making them faster than strings in certain cases
# This is how you make a symbol:

:my_symbol


#Nil - represents nothing. Everything in ruby has return. When code doesn't have anything, it will return Nil
