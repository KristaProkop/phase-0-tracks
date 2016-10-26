
##enter client info and create hash with user input


def to_boo(string)
	if string == "yes" || string == "y" || string == "true" || string == "t"
		return true
	elsif string == "no" || string == "n" || string == "false" || string == "f" 
		return false
	else 
		return nil
	end
end

client = Hash.new

puts "Client's name:"
client[:client_name] = gets.chomp.downcase

puts "Client's age:"
client[:client_age] = gets.chomp.to_i 

puts "Client's number of children:"
client[:number_of_children] = gets.chomp.to_i 

puts "Client's decor theme:"
client[:decor_theme] = gets.chomp.downcase

puts "Does the client like shiplap? Enter y or n"
client[:likes_shiplap] = to_boo(gets.chomp.downcase)
#iterate to show summary of answers
puts "******CLIENT SUMMARY******"
client.each do |key, value|
    puts "#{key}: #{value}"
end
puts "*****************"

#Ask if user needs to update any information;
#if the answer is not "none", get their answer and then
#in-hash replace key_name with their answer
#then convert variable data type as needed
p "If you need to update any of these answers, enter the key_name exactly as shown. If all of the client data is accurate, enter none."
key_name = gets.chomp.downcase
	if key_name != "none"
			puts "Enter new value:"
			new_value = gets.chomp.downcase
			client[key_name.to_sym] = new_value
	end

p "****FINAL CLIENT SUMMARY****"
client.each do |key, value|
    puts "#{key}: #{value}"
end