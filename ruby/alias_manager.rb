#define vowels and consonants string variables
#get user input for original name / if "quit" then exit
#split the original name into array, swap positions and rejoin
#add conditions for edge cases, otherwise return the next letter in the string
#add the names to hash


def advance(string)

  vowels_str = 'aeioua'
  vowels_arr = vowels_str.split('')
  consonants_str = 'bcdfghjklmnpqrstvwxyzb'
  consonants_arr = consonants_str.split('')
 
  str1 = string.split('')

  str_new = str1.map do |char|
    if vowels_arr.include?(char)
      vowels_arr.rotate(1)[vowels_arr.index(char)]
    elsif consonants_arr.include?(char)
      consonants_arr.rotate(1)[consonants_arr.index(char)]
    else
      char
    end
  end

  newname = str_new.join #joining the array into a string
  spyname = newname.split.map(&:capitalize).join(' ') #splitting that string to capitalize the first letter, then rejoining
  p spyname
  realname = string.split.map(&:capitalize).join(' ')
  $codenames << [spyname, realname]
end

 $codenames = []
 name = ""
  until name == "quit"
        puts "Enter a name you'd like to scramble. Enter 'quit' when done."
        name = gets.chomp.downcase
          if name == "quit"
            break
          end
        advance(name)
   end
 
$codenames.each do |real_name,spy_name|
  puts "#{spy_name}'s real name is #{real_name}."
end

