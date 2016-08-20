# module Shout
# 	def self.yell_angrily(words)
# 		 words + "!!!" + " :("
# 	end

# 	def self.yelling_happily
# 		puts "*Yells with happiness*"
# 	end
# end

# #driver code
# Shout.yelling_happily
# Shout.yell_angrily("argh")


module Shout
	def winning(true_or_false)
		if true_or_false == "true"
			puts "YES, we're winning!"
		elsif true_or_false == "false"
			puts "Ugh we're losing!"
		else
			puts "i'm not paying attention at all"
		end
	end

	def lebron(team)
		case team.downcase
		when "cavs" 
			puts "Thank gawd we have LeBron!!"
		when "caveliers"
				puts "Thank gawd we have LeBron!!"
		else 
			puts "Too bad we don't have LeBron :("
		end
		
	end



end

class CavsFan
	include Shout
end 

class WarriorsFan
	include Shout
end

me = CavsFan.new
me.winning("true")
me.lebron("Caveliers")

him = WarriorsFan.new
him.winning("false")
him.lebron("Warriors")