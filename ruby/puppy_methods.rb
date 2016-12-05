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

#-------Release 2 Below------------



class DJ_show

	def initialize
		puts "New Show!"
	end

	def songs_played(num_songs)
		puts "The DJ played #{num_songs} songs!"
	end

	def crowd(turn_out)
		if turn_out >= 500
			puts "and the crowd was crazy!"
		elsif turn_out <= 499 && turn_out >= 350 
			puts "and the crowd was alright."
		else
			puts "and the crowd was weak.."
	end

end

show =[]

50.times do |s|
	show[s] = DJ_show.new
	show[s].songs_played(rand(10..30))
	show[s].crowd(rand(500))
end
end





