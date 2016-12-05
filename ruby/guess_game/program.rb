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
# IF NOT, say "you will learn the ways one day young grasshopper, but today is not that day. Try Again?"

# Once the guesses are up Or if word is guessed, print congratulatory message if win or taunting message if not

class Guess

	def initialize(word)
		@word = word
		@guess_attempt = 0
		@done = false
		@previously_guessed = ""
		@word_display + "_" * word.length
		@word_display.each_char {|w| print w, ''}
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

			


				



end
