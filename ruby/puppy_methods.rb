class Puppy

	def initialize
		puts "Initializing new puppy instance ..."
	end

	def fetch(toy)
	  puts "I brought back the #{toy}!"
	  toy
	end
	
	def speak(int)
	   int.times {puts "Woof!"} 
	end
	
	def roll_over
	  puts "*rolls over*"
	end
	
	def dog_years(human_years)
	  dog_years = human_years * 7
	  puts "#{dog_years}"
	end

	def dance(style)
		puts "Wow! I didn't know you could #{style}!"
	end

end

Shadow = Puppy.new
Don = Puppy.new
Kimbo = Puppy.new
Ugly = Puppy.new

Shadow.fetch("a beer")
Don.speak(5)
Kimbo.roll_over
Ugly.dance("Salsa")
Shadow.dog_years(3)