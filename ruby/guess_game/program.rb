# A user types a word to be guessed 
# Store word they type
# Get the length of the word
# Prints out empty underscores for the length of 
# the word
# Assigns length as the number of guesses

# Until the number of guess is equal to the length of the word OR word is guessed
# Takes a letter as a guess (input from user)
# Guess count increases by one
# IF the letter matches one from the word, print that letter in the line (replaces the blank dash) and
# IF NOT, say "you will learn the ways of the mind one day young grasshopper, but today is not that day. Try Again?"

# Once the guesses are up Or if word is guessed, print congratulatory message if win or taunting message if not

class Guess

	attr_reader :word
	attr_accessor :guess_attempt, :done, :word_display, :previously_guessed

	def initialize(word)
		@word = word
		@guess_attempt = 0
		@done = false
		@previously_guessed = ""
		@word_display + "_" * word.length
		@word_display.each_char {|w| print w, ' ' }
	end

	def letter_check(letter)
		if @previously_guessed.include?(letter)
			puts "You guessed that one already. What else ya got?"
		elsif @word.include?(letter)
			letter_index = 0

			@word.each_char do |hidden_letter|
				if hidden_letter == letter
					@word_display[letter_index] = hidden_letter
				end

				letter_index += 1
			end

			puts "Pretty Good!"
			@word_display.each_char {|w| print w, ' ' }
			p @guess_attempt += 1
		else

		puts "close, but no young grasshopper. Try Again."
		@word_display.each_char {|w| print w, ' ' }
		p @guess_attempt += 1
	end

	previously_guessed << letter
	end

	def end_game
		if @word_display == @word
			@done = true
			p "Impressive! you got it!"
		elsif @guess_attempt == @word.length + 3
			@done = true
			p "you will learn the ways of the mind one day young grasshopper, but today is not that day. Try Again?"
		end

		@done
	end
				
end

# GUI

puts "Hey there! enter a word to be guessed by someone else"
word = gets.chomp
puts "Ohh, that's a pretty tough one"
puts "**********"

puts "/nReady to guess the word they chose?"
puts "this is your word:"
game = Guess.new(word)
puts "/nYou'll have #{word.length + 3} chances."

while !game.end_game
	puts "/nGuess a letter!"
	letter = gets.chomp
	game.letter_check(letter)
end


