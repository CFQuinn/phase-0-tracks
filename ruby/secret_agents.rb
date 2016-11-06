#asking for a word to be encrypted
#p "please provide a word."
#input= gets.chomp

#method for encryption
valid_input= 0

puts "how many passwords will be processed?"
	passwords_processed= gets.chomp.to_i

until valid_input == passwords_processed

	def encrypt(str)
		index = 0
		# declare empty string we will add to
		encrypted = ""
		alphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
			# loop over the string's letters
			while index < str.length
			letter = str[index]
			  if letter == ''
			  	encrypted << ''
			 #conditioning "a" as step forward for "z"
			  elsif letter == "z"
			  	encrypted << "a"
			  elsif letter == "Z"
			 	encrypted << "A" 
			  #instucting to rep. step forward in alphabet
			  else letter = alphabet[letter].next! 
			  	encrypted << letter
			 end
			 index += 1
			end
		encrypted
	end
	
	#output of encryption
	#puts encrypt(input)
	#puts decrypt(encrypt("swordfish"))
	def decrypt(str)
		index = 0
		# declare empty string we will add to
		decrypted = ""
		alphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
			# loop over the string's letters
			while index < str.length
			letter = str[index]
			  if letter == ''
			  	decrypted << ''
			  #conditioning "z" as step back for "a"
			  elsif letter == "a"
			  	decrypted << "z"
			  elsif letter == "A"
			  	decrypted << "Z" 
			#instucting to rep. step back in alphabet
			  else back = alphabet.index(letter) - 1 
			  	decrypted << alphabet[back]
			 end
			 index += 1
			end
		decrypted
	end
	
	#asking which which action they chose to take
	puts "Would you like to decypt or encrypt a password?"
	answer= gets.chomp
	
	#recive content for the action to be taken 
	puts "What is the password?"
	pass= gets.chomp
	
	#running the action according to their preference
	if answer == "encrypt" || answer == "Encrypt"
		puts encrypt(pass)
		valid_input += 1
	end
	
	if answer == "decrypt" || answer == "Decrypt"
		puts decrypt(encrypt(pass))
		valid_input += 1
	end
end









