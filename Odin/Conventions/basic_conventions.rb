# Naming a file 
# basic_conventions.rb - initializing files, methods, or variables must be done using snake_case formatting

# Assigning a variable
fourty_two = 42

# Defining a method
def this_is_a_great_method
  #do stuff
end

# Defining constants - always denoted with all uppercase letters
FOUR = 'four'
FIVE = 'five'

# Working with do/end blocks - prefer { } when the entire code expression fits onto one line:

# Multi-line
[1,2,3].each do |i|
  #do stuff
end

# Single-line
[1,2,3].each{|i| do_some_stuff}

# Naming classes - classes in ruby require the use of PascalCase
# PascalCase - uses no spaces and capitalizes every word
class MyFirstClass
end

class MySecondClass
end
