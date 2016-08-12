#establish spy_name as "Felicia Torres"
#convert spy_name to downcase
#split two words into array
#call index 1 then index 0 into spy_name_swapped
#swap the two words to "Torres Felicia"
#establish vowel_string as "aeiou"
#establish consonant string as "bcdfghjklmnpqrstvwxyz"
#create 2 methods to move to next letter in string:
	#if spy_name contains vowel_string characters, 
		#if edge case u
	#if spy_name contains consonant_string characters,
		#if edge case z 

#vowel_string = "aeiou"
#consonant_string = "bcdfghjklmnpqrstvwxyz"

##Vussit Gimodoe

def scramble(name)
  consonants = "bcdfghjklmnpqrstvwxyz"
  vowels = "aeiou"

  name_array = name.downcase.split
  name_swapped = name_array[1] + " " +  name_array[0]
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
  
 end
 
#UI - loop request for name until the answer is quit.
 spy_name = ""
 until spy_name == "quit"
    puts "Enter a name you'd like to scramble. Enter 'quit' when done."
    spy_name = gets.chomp.downcase
      if spy_name != "quit"
        scramble(spy_name)
      else puts "Thank you for spying!"
      end
 end

