employeesentered = 0   #set starting var for entries loop

puts "How many employees do you have to enter today?"
entries = gets.chomp
entries = entries.to_i  #convert answer to integer

until employeesentered == entries  #employeesentered var increases by 1 until it matches the number of entries per user input
	puts "What is your name?"
	name = gets.chomp
	name = name.downcase #convert answer to lowercase to ensure string match

	puts "how old are you?"
	age = gets.chomp
	age = age.to_i

	puts "What year were you born?"
	year = gets.chomp
	year = year.to_i

agetrue = Time.new.year - age == year #calculates age accuracy and sets boolean for test

	puts "Our company cafeteria serves garlic bread. Should we order some for you? y/n"
	garlic = gets.chomp
	garlic = garlic.downcase

	puts "Would you like to enroll in the company’s health insurance? y/n"
	enroll = gets.chomp
	enroll = enroll.downcase

allergies = ""  #sets allergies var to avoid skipping this question after one entry answers "done"
	until allergies == "done"
		puts "Type in your allergies one by one. Type 'done' when finished."
		allergies = gets.chomp
		allergies = allergies.downcase
		if allergies == "sunshine"
			break #exits allergies question and moves on to case
		else  #in this case the empty else restarts the loop
		end
	end

	puts case
	when name == "drake cula" || name == "tu fang" || allergies == "sunshine"
		 "Definitely a vampire"
	when agetrue && (garlic == "y" || enroll == "y")
		 "Probably not a vampire"
	when (!agetrue && garlic == "n" && enroll == "n")
		 "Almost certainly a vampire"
	when !agetrue && (garlic == "n" || enroll == "n")
		 "Probably a vampire"
	else
		 "Results inconclusive"
	end

employeesentered = employeesentered + 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends." 


