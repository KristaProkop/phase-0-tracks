#define vowels and consonants string variables
#get user input for original name / if "quit" then exit
#split the original name into array, swap positions and rejoin
#add conditions for edge cases, otherwise return the next letter in the string
#add the names to hash

def scramble(name)
  consonants = "bcdfghjklmnpqrstvwxyz"
  vowels = "aeiou"

  #split the name into an array, swap the names using their index in the array
  name_swapped = name.downcase.split[1] + " " +  name.downcase.split[0] #swap, add space back assign to new variable

  index_counter = 0
  until index_counter == name.length
    if name_swapped[index_counter] == " "
        name_swapped[index_counter] == " "
    elsif name_swapped[index_counter] == "u"
        name_swapped[index_counter] = "a"
    elsif name_swapped[index_counter] == "z"
        name_swapped[index_counter] = "b"    
    elsif vowels.include?name_swapped[index_counter]
        name_swapped[index_counter] = vowels[vowels.index(name_swapped[index_counter]) + 1 ]
    else consonants.include?name_swapped[index_counter]
        name_swapped[index_counter] = consonants[consonants.index(name_swapped[index_counter]) + 1 ]
    end
    index_counter += 1
  end
  
  #print result and add to hash (first splitting the names, capitalizing the first letter, and re-joining them, at the same time assigning those results to variables to make the code a little more readable)
  p spy_name = name_swapped.split.map(&:capitalize).join(' ') 
  real_name = name.split.map(&:capitalize).join(' ')
  $codenames[real_name] = spy_name  
  
 end
 
$codenames = {} #I used global scope so I could call the hash inside and outside the scramble method - a necessity based on the way I originally structured my code.

 name = ""
  until name == "quit"
        puts "Enter a name you'd like to scramble. Enter 'quit' when done."
        name = gets.chomp.downcase
          if name == "quit"
            break
          end
        scramble(name)
   end
   
$codenames.each do |real_name,spy_name|
  puts "#{spy_name}'s real name is #{real_name}."
end

