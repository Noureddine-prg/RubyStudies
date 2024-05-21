#Loops 

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


