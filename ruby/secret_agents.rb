#asking for a word to be encrypted
p "please provide a word."
input= gets.chomp

#method for encryption
def word(str)
	index = 0
	while
		while index < str.length
		  str[index] = str[index].next!
		  index += 1
		end
	end
	str
end

#output of encryption
puts word(input)