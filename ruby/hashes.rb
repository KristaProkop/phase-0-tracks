
#enter client info
puts "Client's name:"
client_name = gets.chomp.downcase
#my tendency is to downcase any string variable, for ease of reference 
#i don't know if this is good practice but I will find out!

puts "Client's age:"
client_age = gets.chomp.to_i 

puts "Client's number of children:"
number_of_children = gets.chomp.to_i 

puts "Client's decor theme:"
decor_theme = gets.chomp.downcase

puts "Does the client like shiplap? Enter yes or no."
likes_shiplap = gets.chomp.downcase
	if likes_shiplap == "yes" || likes_shiplap == "y"
		likes_shiplap = true
	elsif likes_shiplap == "no" || likes_shiplap == "n"
		likes_shiplap = false
	else likes_shiplap = nil 
	end
		#this converts yes/no and y/n to plain boolean values, just because!

#create hash with user input
client = {
  client_name: client_name, 
  client_age: client_age,
  number_of_children: number_of_children,
  decor_theme: decor_theme,
  likes_shiplap: likes_shiplap,
}

#show summary of answers. Ask if user needs to update any information;
#if the answer is not "none", get their answer and then
#in-hash replace key_name with their answer

puts "Client summary: #{client}"
p "If you need to update any of these answers, enter the key_name exactly as shown. 
If all of the client data is accurate, enter none."
key_name = gets.chomp.downcase
	if key_name != "none"
		puts "Enter new value:"
		new_value = gets.chomp
		client[key_name.to_sym] = new_value
	end

p "Final client summary: #{client}"
