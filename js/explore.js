// Reverse Method Pseudocode

// receive aword word
// Get count of letters in the word
// ID the last letter of the word and add that to an empty string
// Go through the rest of the word and add each last letter to the string




function reverse(word) {

	var length = word.length - 1
	var new_word = ""

	for (var i = 0; i < word.length; i++) {
		new_word = new_word + word.charAt(length);
		var length = length - 1
	}

	return new_word
}

var reversed_word = reverse("javascript")

if (1 == 1) {
	console.log(reversed_word)
}