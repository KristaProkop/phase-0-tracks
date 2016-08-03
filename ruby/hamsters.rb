# hamster's name inquiry
puts "Enter hamster's name"
name = gets.chomp

# volume level of hamster inquiry
puts "Enter volume level (1 to 10 scale) of hamster"
volume_level = gets.chomp.to_i

# fur color inquiry
puts "Enter fur color of hamster"
fur_color = gets.chomp

# adoption inquiry
puts "Is this hamster a good candidate for adoption (enter yes or no)"
can_adopt = gets.chomp.downcase

# estimated age inquiry
puts "Enter estimated age of hamster"
age = gets.chomp

# .empty? tests whether age variable is an empty string (i.e. "")
case
	when age.empty?
		age = nil
	else
		age.to_i
end

puts "hamster summary:"
puts "----------------"
puts "hamster's name: #{name}"
puts "hamster's volume level: #{volume_level}"
puts "hamster's fur color: #{fur_color}"
puts "candidate for adoption: #{can_adopt}"
puts "hamster's age: #{age}"