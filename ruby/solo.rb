#Design a class
# Candy attributes:
# - name (varies by instance; string)
# - calories (varies by instance; number)
# - type (array - hard, chewy, chocolate, other; string)

# Candy methods:
# - initialize: pass through name and calories
# - healthy: if calories less than 100, yes. If greater than 100, no
# - eat: puts let's eat #{candy.name}
# - melts: candy of type chocolate will melt


class Candy

	attr_accessor :name, :calories, :type
	attr_reader :category

	def initialize(candy_name, calories_per_serving)
		@name = candy_name
		@calories = calories_per_serving
		@melt_category = ["chocolate", "chewy"]
	end

	def eat
		puts "Time to eat #{@name}!"
	end

	def healthy
		calorie_percent = @calories.to_f/2000.0*100
		if @calories < 100
			puts "This is only #{calorie_percent}% of your daily target - let's eat!"
		else
			puts "This is #{calorie_percent}% of your daily target - you sure you want to eat that?"
		end		
	end
	
	def melts
		puts "Is this hard candy, chewy, chocolate, or other?"
		@type = gets.chomp
		if @melt_category.include?(@type)
			return true
		else
			return false
		end
	end

end

#Driver code
#candy = Candy.new("Pez", 35)
#candy.melts

#UI
#initialize array
#ask to create a new instance or quit
#prompt for candy name, calories, and type, store in array
#print healthy method
#if category isn't chocolate
	#print eat method
#else	#print melt method

candy_data = []

puts "CANDY DECISION-MAKER"
puts "[[Pretend you have candy you want to eat]]"

puts "What is the name of your candy?"
name = gets.chomp

puts "How many calories per serving?"
calories = gets.chomp.to_i

new_candy = Candy.new(name, calories)

new_candy.melts
		if new_candy.melts == true
			puts "Oh no, your candy is melting :("
		else
			puts "Don't worry, this candy won't melt."
		end
