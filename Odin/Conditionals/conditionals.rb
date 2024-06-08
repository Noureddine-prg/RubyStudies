# Controlling the flow of logic in your code

if room_tidy == true
  "I can play video games"
end

# if
if 1 < 2
  puts "Hot damn"
end

# if else
if attack_by_land == true
  puts "release the goat"
else
  puts "release the shark"
end

# if elsif else
if attack_by_land == true
  puts "release the goat"
elsif attack_by_sea == true
  puts "release the shark"
else
  puts "release Kevin the octopus"
end

# switch statements
grade = 'F'

did_pass = case grade
  when 'A' then "Hell Yeah!"
  when 'D' then "Dont tell your mother."
else
