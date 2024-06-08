# Enumerable Methods 
# Remeber DRY we dont want to have to keep looping and iterating

# Enumerables are a set of built-in methods in ruby that are included
# in both arrays and hashes. We will constantly be transforming, 
# searching, and selecting subsets of elements in our collections.
# Enumerables ae designed to make all this easier.

# https://docs.ruby-lang.org/en/3.3/ Docs

# Here are some of the methods that i'll be seeing 
# each and each_with_index
# map
# select
# reduce 
# do...end and {...}

# each
# calling each on an array will iterate through that array and will yield 
# each element to a code block where a task can be performed 

friends  = ['Carlos','Philip','JP','Bryan']
friends.each {|friend| p "Hello, " + friend}

# Hello, Carlos 
# Hello, Philip
# Hello, JP
# Hello, Bryan

# Syntax breakdown - 

# friends => array that contains names

# .each => enumerable method you are calling on your friends array

# {|friend| p "Hello, " + friend} => block and the code inside this block code inside runs the length of the array (4 times)
  # |friend| - this is known as a block variable. It represents the current element from our array that we are currently iterating over.






