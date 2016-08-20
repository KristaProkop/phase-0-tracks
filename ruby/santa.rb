class Santa

attr_accessor :ethnicity, :age, :gender

def initialize(gender, ethnicity)
	puts 'Initializing Santa instance...'
	@gender = gender
	@ethnicity = ethnicity
	p "Santa is a #{@ethnicity} #{@gender}"
	@age = 0
	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
end


# getter method no longer needed due to attr_accessor
# def ethnicity
# 	@ethnicity
# end

# def age
# 	@age
# end

def celebrate_birthday
	@age = @age + 1
	@age
end

def get_mad_at(reindeer_name)
	@reindeer_ranking.insert(8, @reindeer_ranking.delete(reindeer_name))
	p "#{reindeer_name} has been moved to the bottom of the list!"
end

def ho(number)
  number.times { puts 'Ho, ho, ho! Haaaapy holidays!'}
end

def eat_milk_and_cookies(cookie)
	print "That was a good #{cookie} cookie!"
end

# setter method no longer needed due to attr_accessor
# def gender=(new_gender)
# 	@gender = new_gender 
# end

end

#Driver Code:
santa = Santa.new("male", "white")
santa.ho(3)
santa.eat_milk_and_cookies("snickerdoodle")
santa.get_mad_at("Vixen")
santa.celebrate_birthday
santa.age
santa.age = 4

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

10.times do 
  new_santas = Santa.new(example_genders.sample, example_ethnicities.sample)
  new_santas.age = rand(140)
  p "This Santa is a #{new_santas.ethnicity} #{new_santas.gender}, age #{new_santas.age}."
end

