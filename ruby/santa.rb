class Santa

	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
	end

	def speak
		puts "Ho, ho, ho! Haaaaapy Holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def reindeer_ranking
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		puts "#{reindeer_ranking}"
	end

	def get_mad_at(reindeer)
		@reindeer_ranking = @reindeer_ranking.delete(reindeer)
		@reindeer_ranking.push(reindeer)
		puts "#{@reindeer_ranking}"
	end

	def age
		@age = (0..140).to_a.sample
	end

	def celebrate_birthday
		@age = @age + 1
		puts "This Santa is #{@age} years old!"
	end

	def gender 
		example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
		@gender = example_genders.sample
	end

	def ethnicity
		example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
		@ethnicity = example_ethnicities
	end

end

santa_count = 0

while santa_count <= 99
	santa = Santa.new
	puts "This is a #{santa.age} year old #{santa.gender} #{santa.ethnicity} Santa and he says #{santa.speak}"
	santa_count += 1
end

#Ben = Santa.new

#Ben.speak 
#
#Santa_bio = []

#gender_input = ["male", "female", "bi", "trans"]
#enthnicity_input = ["latino", "white", "black", "asian"]
#
#gender_input.length.times do |w|
#	Santa_bio << Santa.new(gender_input[w], enthnicity_input[w])
#end

