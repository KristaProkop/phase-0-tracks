def block_method
    puts "what is your name?"
    name = gets.chomp
    yield(name)
end

block_method { |name| puts "Hello #{name}"}
seasons = {
    :spring => "cool",
    :fall => "crunchy",
    :winter => "snowy",
    :summer => "muggy",
}

descriptions = ['hot', 'slightly less hot', 'habitable', 'cold', 'stuffy']

seasons.each do |season, description|
    puts "#{season} is #{description}"
end

new_seasons = {}

a = seasons.map do |season, descriptions|
    new_seasons[season] = descriptions
end

puts new_seasons

descriptions.each do |description|
    puts description
end

description.map! do ||{
    
}

index = -1
descriptions.map do |thing|   #bang modifies the array in place
    index+=1
    puts thing[index].next  #new value must be on the bottom in order for array to update
    end
puts "After .map call:"
p descriptions