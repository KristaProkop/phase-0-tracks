wolves_like_sunshine = true
wolves_like_garlic = true
vampires_like_sunshine = false
vampires_like_garlic = false

puts "What is your name?"
name = gets.chomp

puts "how old are you?"
age = gets.chomp
age = age.to_i

puts "What year were you born?"
year = gets.chomp
year = year.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you? y/n"
garlic = gets.chomp

puts "Would you like to enroll in the company’s health insurance? y/n"
enroll = gets.chomp

case 
when name == "Drake Cula" || "Tu Fang"
 	puts "Definitely a vampire."
when 2016 - age == year && garlic == "y" || enroll == "y"
 	puts "Probably not a vampire."
when 2016 - age != year && garlic == "n" || enroll == "n"
 	puts "Probably a vampire."
when 2016 - age != year && garlic == "n" && enroll == "n"
 	puts "Almost certainly a vampire."
else	
 	puts "Results inconclusive."
end
