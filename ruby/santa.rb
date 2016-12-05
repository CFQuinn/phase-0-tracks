class Santa

	def initialize(a_gender, an_ethnicity)
		puts "Initializing Santa instance..."
		@gender = a_gender
		@ethnicity = an_ethnicity
	end

	def speak
		puts "Ho, ho, ho! Haaaaapy Holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def reindeer_ranking
		@reindeer = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end

	def age
		@age = 0
	end

end

Ben = Santa.new

#Ben.speak 
#
#Santa_bio = []

gender_input = ["male", "female", "bi", "trans"]
enthnicity_input = ["latino", "white", "black", "asian"]

gender_input.length.times do |w|
	Santa_bio << Santa.new(gender_input[w], enthnicity_input[w])
end

