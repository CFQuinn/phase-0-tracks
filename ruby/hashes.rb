#Prompt the designer/user for all of this information.
#Convert any user input to the appropriate data type.
#Print the hash back out to the screen when the designer has answered all of the questions.
#Give the user the opportunity to update a key
#Print the latest version of the hash, and exit the program.

answer = {}


loop do 
	puts "1) What is your name?"
	name=gets.chomp
	answer[:name] = "#{name}"

	puts "2) Whats your age?"
	age=gets.chomp
	answer[:age] = "#{age}"

	puts "3) How many children do you have?"
	num_children=gets.chomp
	answer[:children] = "#{num_children}"

	puts "4) What is your favorite decor theme?"
	decor_theme=gets.chomp
	answer[:decor_theme] = "#{decor_theme}"

	end_loop= "#{decor_theme}"

	break if end_loop == "#{decor_theme}"
	
end

puts "Which question number from above would you like to make changes to? if nono, please type 'none'."
pref=gets.chomp

if pref == "1"
	puts "what is new name?"
	name=gets.chomp
	answer[:name] = "#{name}"
elsif pref == "2"
	puts "what is new age?"
	age=gets.chomp
	answer[:age] = "#{age}"
elsif pref == "3"
	puts "what is new input for amount of children?"
	num_children=gets.chomp
	answer[:children] = "#{num_children}"
elsif pref == "4"
	puts "what is new favorite decor theme?"
	decor_theme=gets.chomp
	answer[:decor_theme] = "#{decor_theme}"
else pref == "none"
end


