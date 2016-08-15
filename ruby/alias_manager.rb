#define vowels and consonants string variables
#get user input for original name / if "quit" then exit
#split the original name into array, swap their positions and rejoin
#perform condition test for spaces and edge cases, otherwise return the next letter in the string
#add the names to an array

def scramble(name)
  consonants = "bcdfghjklmnpqrstvwxyz"
  vowels = "aeiou"

  name_split = name.downcase.split  
  name_swapped = name_split[1] + " " +  name_split[0] #swap, add space back assign to new variable

  index_counter = 0
  #time to select the next letters, with edge cases like space, z, and u accounted for:
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
  #print result after splitting the words, capitalizing the first letter, and re-joining them (just a fancy style choice!)
  p name_swapped.split.map(&:capitalize).join(' ') 

  #add original and scrambled names to array:
  $codenames << [name.split.map(&:capitalize).join(' '), name_swapped.split.map(&:capitalize).join(' ')]  
 end
 
$codenames = [] #I gave this global scope ($) so I could use it both inside and outside the scramble method.

#user interface: request name and downcase it. Exit and do not scramble if user enters quit.
 name = ""
  until name == "quit"
        puts "Enter a name you'd like to scramble. Enter 'quit' when done."
        name = gets.chomp.downcase
          if name == "quit"
            break
          end
        scramble(name)
   end
   
$codenames.map do |real_name,spy_name|
  puts "#{spy_name}'s real name is #{real_name}."
end




