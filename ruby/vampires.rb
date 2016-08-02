
loops = 0
allergies = ""

puts "How many employees do you have to enter today?"
entries = gets.chomp
entries = entries.to_i

until loops == entries
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

until allergies == "done"
	puts "If you have allergies, type one of them in and press enter. When you are finished type 'done'."
	allergies = gets.chomp
	if allergies == "sunshine"
	break
end
end

agetrue = Time.new.year - age == year
case 
when (name =~ /Drake Cula/i) || (name =~ /Tu Fang/i) || (allergies =~ /sunlight/i)
	puts "Definitely a vampire"
when agetrue && (garlic == "y" || enroll == "y")
	puts "Probably not a vampire"
when (!agetrue && garlic == "n" && enroll == "n")
	puts "Almost certainly a vampire"
when !agetrue && (garlic == "n" || enroll == "n")
	puts "Probably a vampire"

else
	puts "Results inconclusive"
end

loops = loops + 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends." 


