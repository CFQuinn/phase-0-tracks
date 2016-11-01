puts "What's the Hamsters name?"
Hamster_Name= gets.chomp

puts "On a scale of 1-10, how noisey is #{Hamster_Name}?"
Noise_Level= gets.chomp.to_i

def Hampster_Squeak(level)
	if level <= 5
		puts "on the quiter side"
	elsif level == 6
		puts "a bit noisey at times."
	else level >= 7
		puts "will talk your ear off"
	end
end

puts "What color is #{Hamster_Name}'s fur?"
Fur_Color= gets.chomp

puts "Estimated Age in years?"
Age= gets.chomp.to_i || gets.chomp.nil?

def How_Old(answer)
	if answer > 0
		puts "is #{Age}."
	else answer.nil?
		puts "is unknown."
	end
end
puts "Is #{Hamster_Name} a good candidate for adoption? (y/n)"
YoN= gets.chomp

def adoptable(overall)
	if overall = "y"
		puts "#{Hamster_Name} is a great candidate for adoption!"
	else overall = "n"
		puts "#{Hamster_Name} still can use a little work before being ready for adoption."
	end
end

puts "Based on the information provided, you have a hamster named #{Hamster_Name} with #{Fur_Color} that is" 
puts Hampster_Squeak(Noise_Level) 
puts "who's age" 
puts How_Old(Age) 
puts "we think #{Hamster_Name}"
puts adoptable(YoN)








