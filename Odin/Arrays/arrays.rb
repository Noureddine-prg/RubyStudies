# Arrays 

# Creating basic arrays

num_array = [1,2,3,4,5]
str_array  = ["This", "is", "basic", "array"]

# Arrays are commonly created with an array literal

# Array created with array literal 

# Array.new( size , default value ) - this is array literal 
Array.new         #=> [] empty array  
Array.new(3)      #=> [nil,nil,nil] array of size 3
Array.new(3,7)    #=> [7,7,7] array size 3 default value of 7  
Array.new(3,true) #=> [true,true,true] array size 3 default value of true

# Accessing Elements
str_array  = ["This", "is", "a", "basic", "array"]

str_array[0] #=> This
str_array[1] #=> is
str_array[4] #=> array
str_array[-1] #=> array
str_array[-2] #=> basic

# first and last array methods
str_array  = ["This", "is", "a", "basic", "array"]

str_array.first     #=> "This"
str_array.first(2)  #=> ["This", "is"]
str_array.last(2)   #=> ["basic", "array"]

# Adding and removing elements

num_array = [1,2]

num_array.push(3,4,5) #[1,2,3,4,5] the numbers specified aded to the end of the array using .push()
num_array << 6        #[1,2,3,4,5,6] the numbers specified will be added using shovel operator <<
num_array.pop         #[1,2,3,4,5] last index will be popped off 
num_array             #[1,2,3,4,5]

#shift and #unshift

# are used to add and remove the elements at the beginning of the array
# unshift - adds elements to beginning of an array and returns the array (like push)
# shift - removes first element of an array (like pop)

num_array = [2,3,4]

num_array.unshift(1) #=> [1,2,3,4]
num_array.shift #=> takes index 0 out: 1 array becomes this [2,3,4]

# pop and shift can take integer arguments

num_array = [1,2,3,4,5,6]

num_array.pop(3)    #=> takes out [4,5,6]
num_array.shift(2)  #=> takes out [1,2]
num_array           #=> [3] only one remaining after pop and shift

# Adding and subtracting arrays

# Arrays can be contatonated like this:

a = [1,2,3]
b = [3,4,5]

a + b       #=> [1,2,3,3,4,5]
a.concat(b) #=> [1,2,3,3,4,5]

# Subtracting or finding difference in two arrays

[1,1,1,2,2,3,4] - [1,4] #=> [2,2,3] will remove any elements that appear in the second array.

# some array methods I might see
[].empty?     #=> true
[[]].empty?   #=> false
[1,2].empty?  #=> false

[1,2,3].length #=> 3 

[1,2,3].reverse #=> [3,2,1]

[1,2,3].include?(3) #=> true
[1,2,3].include?("3") #=> false

[1,2,3].join        #=> "123"
[1,2,3].join("-")   #=> "1-2-3"

#Assignments:

# 1) check if a number is in an array
  arr = [1,3,5,7,9,11]
  number = 3 

  puts arr.include?(number)

# 2) What will these return?

  # arr = ["b","a"]
  # arr = arr.product(Array(1..3))
  # arr.first.delete(arr.first.last)


  # arr = arr.product(Array(1..3))
  arr = ["b","a"]

  # Array(1..3) creates new array with elements [1,2,3]

  # arr.product(Array(1..3)) - computes cartesian product each element is a combination of arr and [1,2,3]
  # this creates and assigns [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]] to arr 
  arr = arr.product(Array(1..3))

  # arr.first accesses the first element of the array - ["b",1]
  # arr.first.last accesses the last element of the first element - 1
  # deletes 1 and returns it
  arr.first.delete(arr.first.last)

# 3) How do you return the word example from the following array
  arr = [["test", "hello", "world"] , ["example", "mem"]]

  puts arr.last.first

# 4) What does each method return
  arr = [15,7,18,5,12,8,5,1]

  p arr.index(5) #=> 3 returns the index of the first instance of 5 
  
  p arr.index[5] #=> doesn't work throws an error

  p arr[5] #=> 8 returns value at index 5

# 5) What is the value of a,b,c in the program
  str = "Welcome to America"
  a = str[6]  #=> e 
  a = str[11] #=> A
  a = str[19] #=> nil -> when it goes beyond it returns nil

# 6) names = ['bob','joe','susan','margaret']
#    names['margaret'] = 'jody' <- this gives error fix it

  names = ['bob','joe','susan','margaret']
  names[names.index('margaret')] = 'jody'

  p names

# 7) use each_with_index method to iterate through an array of your creation that prints each index and value of the array.
  my_arr = ['Philip', 'Carlos','JP','Bryan','Nour']

  my_arr.each_with_index{|val,index| puts "#{index}. #{val}"}

# 8) Write a program that iterates over an array and builds a new array that is the result of incrementing each value in the original aray by a value of 2. 
#    you should have two arrays at the end of this program, The original array and the array you created. Print both arrays using the p method instead of puts. 

  my_arr = [1,2,3,4] #Goal is to make this [3,4,5,6]
  new_arr = Array.new

  # iterates through each element in the array 
  # For each element n in my_arr, new_arr << n + 2 adds the result of n + 2 to the end of new_arr

  arr.each do |n|
    new_arr << n + 2
  end 

  p arr
  p new_arr

# Looking up some more array methods using the documentation

# clear - removes all elements from self
a = [11,22,33,44,55]
a.clear #=> []

# insert(index, *objects) - inserts given objects before or after the element at the integer index returns self
a = [:foo, 'bar', 2]
a.insert(1,:bam, :boom)
p a 
# a = [:foo, 'bam','boom','bar',  2]

# sample(size) - returns random element from array
a = [1,2,3,45,6,23,54]
a.sample    #=> 6
a.sample(2) #=> [45,3]

# shuffle - returns a shuffled version of the array 
a.shuffle 















