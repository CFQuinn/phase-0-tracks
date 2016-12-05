require_relative 'program'

describe Guess do 
	  let(:game) { Guess.new("unicorn") }

  it "prints out the number of blank spaces based on word" do
    expect(game.word_display).to eq "_______"
  end

  it "replaces the dash if the letter is in the word" do
    game.letter_check("u")
    expect(game.word_display).to eq "u______"
  end

  it "keeps guess count the same if letter has already been guessed" do
    @previously_guessed = "abc"
    game.letter_check("a")
    expect(game.guess_attempt).to eq 1
  end

  it "ends the game if all the user runs out of guesses" do
    game.guess_attempt = 10
    expect(game.end_game).to eq true
  end

end