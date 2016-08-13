
## TODO: can i add to hash instead of array?
#take the name and split into an array, then swap the array
#split the letters into an array and run both methods against each letter
#loop until indexcounter is equal to name length

## I will be the first to admit this is a very inelegant program, but I spent way too much time on this before realizing we had to save the input to a data structure, so I decided to back into a solution. It functions properly and the desired results are achieved.


def scramble(name)
  consonants = "bcdfghjklmnpqrstvwxyz"
  vowels = "aeiou"

  name_array = name.downcase.split  #split the name into an array of two
  name_swapped = name_array[1] + " " +  name_array[0] #swap the 2 elements and assign to a variable

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
  p name_swapped.split.map(&:capitalize).join(' ')

  $codenames << name_swapped.split.map(&:capitalize).join(' ')  #add to codenames array
 end
 
realnames = []
$codenames = [] #I made gave this global scope ($) so I could use it in my scramble method.

 name = ""
  until name == "quit"
        puts "Enter a name you'd like to scramble. Enter 'quit' when done."
        name = gets.chomp.downcase
          if name == "quit"
            break
          end
        realnames << name #add 
        scramble(name)
   end
   
allnames = Hash[realnames.zip($codenames.map {|i| i.split /, /})]
#I made one array for codenames and one for realnames. This expression combines them into a hash, although the key/value setup is "creative" to say the least
allnames.each do |real_name,spy_name|
  puts "#{spy_name} is actually #{real_name}"
end



