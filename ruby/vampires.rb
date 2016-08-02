
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

agetrue = Time.new.year - age == year

case 
when agetrue && (garlic == "y" || enroll == "y")
	puts "Probably not a vampire"
when (!agetrue && garlic == "n" && enroll == "n")
	puts "Almost certainly a vampire"
when !agetrue && (garlic == "n" || enroll == "n")
	puts "Probably a vampire"
when (name =~ /Drake Cula/i) || (name =~ /Tu Fang/i)
else
	puts "Results inconclusive"
end


