# module Shout

#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#   	words + "!!!" + " :)"
#   end

# end

# p Shout.yell_angrily("What a day")
# p Shout.yell_happily("What a day")

module Shout
	def yell_angrily(words)
		puts "#{words}!!! :("
	end
end

class Coach
	include Shout
end

class Sister
	include Shout
end

coach = Coach.new
coach.yell_angrily("One more lap")

parent = Sister.new
parent.yell_angrily("Get back here")