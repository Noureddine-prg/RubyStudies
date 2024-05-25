# methods - reusable code
# DRY - Don't repeat yourself
# Since everything is an object, ruby only has methods not functions
# Methods and functions refer to the same thing
# Ruby has implicit returns but you can also explicitly return as well

# Creating a method
def my_name   
  "Nour"
end

p my_name #=> prints returned string

# Breakdown of method syntax for this example

# def - tells ruby this is a method
# my_name - name of the method. make sure to follow namiung conventions
# "Nour" - is the code inside of method body. All logic for the method is contained in the indented section of method body returns string when called 
# end - tells ruby that this is the end of function 

# Methods can use numbers, capital letters, lowercase, and special characters (_, ?, !, = )

# CONVENTIONALLY - start method names with lower-case letter 

# Parameters and Arguments

# Parameters are placeholders for the variables
# Arguments are the variables that get passed through
 
def greet(name) 
  "Hello, " + name + "!"
end

p greet("Nour")

# Default Parameters 
def greet(name = "Nour")
  "Hello, " + name + "! "
end 

p greet #=> "Hello Nour"
p greet("Adam") #=> "Hello Nour"


# Ruby by default doesn't need an explicit return although it can have one
# It returns the last expression that was evaluated

def even_odd(number)
  if number % 2 == 0
    "That is an even number."
  else
    "That is an odd number."
  end
end

puts even_odd(16) #=>  That is an even number.
puts even_odd(17) #=>  That is an odd number.

# Here it was dependant on the result of the if condition
# Using a return also stops it from continuing as normal

# Chaining Methods 
# To be able to write concise code in ruby is heavily imposed as you are able to chain methods together.

phrase = ["a", "dino", "is", "coming"]

p phrase.reverse.join(" ").capitalize
# "Coming is dino a"
# first the reverse method was used
# then it got joined together separated by spaces
# finally the first letter got capitalized

# Predicate methods
# There are built in ruby methods that have a ? mark
# These will always return true or false. Think of it asking a yes or no question only 

p 5.even? #=> false
p 6.even? #=> true
p 17.odd? #=? true

p 12.between?(10,15) #=> true

p 23.