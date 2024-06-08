#Loops 

# |number| <- block parameter
# || vertical bars enclose the parameter, basically we are initializing it here

# Basic Loop - this loop will not stop unless you specify a stopping point
i = 0 

loop do 
  puts "i is #{i}"
  i+= 1 
  break if i == 10 # condition to stop
end 

# While Loop - same loop but you declare the condition that will break the loop up front
# Doing it this way is more clear
i = 0

while i < 10 do
  puts "i is #{i}"
  i += 1
end

# Until loop - is the opposite of while loop. Loop continues as long as the condition is false
# Basically to avoid using negation operator ! 

i = 0
until i >= 10 do 
  puts "i is #{i}"
  i += 1
end

# Ranges - When we know how many times we want our loops to run 

# this is how you define the interval or range
(1..5)  # inclusive range: 1,2,3,4,5
(1...5) # exclusive range 1,2,3,4,5

# can also make a range of letters
('a'..'d') # a,b,c,d

# For loop - i holds the value of current interval 

for i in 0..5 
  puts "#{i} zombies incoming!"
end

# Can interate through the length like this
arr = [1,2,3,4,5,6]
for i in 0..arr.length
  puts "#{i} zombies incoming!"
end

# Times Loop - run loop specified number of times able to access the number iterating through

# Printing out something specified number of times
5.times do 
  puts "Hello world!"
end

# Accessing number we are currently at in interation (starts at 0) our block parameter represents the current interation index
5.times do |number| 
  puts "Alternative fact #{number}"
end


# Upto and Downto
# As the name entails, you can use these methods to iterate from a starting number either up to or down to another number

5.upto(10) {|num| print "#{num} "} #=> 5 6 7 8 9 10

10.downto {|num| print "#{num} "} #=> 10 9 8 7 6 5