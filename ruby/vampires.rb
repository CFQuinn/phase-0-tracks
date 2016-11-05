valid_input= 0

puts "how many employees will be processed?"
	employees_processed= gets.chomp.to_i

until valid_input == employees_processed
	puts "Applicant's name?"
	name= gets.chomp
	
	puts "How old is #{name}?"
	age= gets.chomp.to_i
	
	puts "What year was #{name} born?"
	birth_year= gets.chomp.to_i
	
	puts "Our company cafeteria serves garlic bread. Would #{name} like some? (y/n)"
	bread_answer= gets.chomp
	
	puts "Would #{name} like to enroll in the company’s health insurance? (y/n)"
	insurance= gets.chomp

	puts "List all alergeies. Type the word done when finished"
		list= gets.chomp
		
		until list == "done" || list == "sunshine"
			puts "Any more?"
			list= gets.chomp
		end
	
	if (2016 - birth_year) > age
		age_check = false
	elsif (2016 - birth_year) < age
		age_check = false
	elsif (2016 - birth_year) == age
		age_check = true
	else 
		puts "invalid entry in either age or birth year section."
	end
	
	if bread_answer == "n"
		bread_q = false
	elsif bread_answer == "y"
		bread_q = true
	else
		puts "invalid entry in either garlic bread section."
	end
	
	if insurance == "n"
		ins_q = false
	elsif insurance == "y" 
		ins_q = true
	else
		puts "invalid entry in either garlic insurance section."
	end
	
	if age_check && (bread_q || ins_q) == true
		puts "Probably not a vampire."
		valid_input += 1
	elsif age_check && (bread_q || ins_q) == false
		puts "Probably a vampire."
		valid_input += 1
	elsif list == "sunshine"
		puts "Probably a vampire"
		valid_input += 1
	elsif age_check && (bread_q && ins_q) == false
		puts "almost certainly a vampire"
		valid_input += 1
	elsif name == "Drake Cula" || name == "Tu Fangs"
		puts "Definitely a Vampire."
		valid_input += 1
	else
		puts "Results inconclusive"
	end
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."