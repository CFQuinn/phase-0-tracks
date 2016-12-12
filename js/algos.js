
//RELEASE 0: Create function that takes an array and returns the longest thing in that phrase
	

	function longString(array){
		var string_length = 0
		var longestString = "";

	for (var i = 0; i < array.length; i++){
		if (array[i].length > string_length) {
			var string_length = array[i].length;
			longestString = array[i];
		}
	}
	console.log(longestString);
	}

	longString(["Sam", "Schneia"]) // =>  "Schneia"
	





// RELEASE 1: 
		//Create a function that can take two objects and check if the objects share at least one key-value pair. 

function Match(str1, str2) {
	for (var property in str1){
	for (var key in str2){
		if (property + str1[property] == key + str2[key])
			var does_it_match = true; 
		};
		};
		if (does_it_match == true){
		console.log(does_it_match)
		}
		else {
		console.log(false)
	};
	};

var set1 = {car: "Subaru", name: "Sam", age: 25};
var set2 = {car: "Subaru", name: "Todd", age: 30};
var set3 = {car: "Ford", name: "Tom", age: 22 };

Match(set2, set3) // => False 
Match(set1, set2) // => True 


//RELEASE 2: Create a function that takes an integer for length and returns an array of strings of the given length.
	

function numtoarray(integer) {
	var letters = "abcdefghijklmnopqrstuvwxyz"
	var lengtharray = [integer]

	for (var i = 0; i < int; i++) {
		lengtharray[i] = letter.substr(Math.floor(Math.random() * 14) + 2);
		console.log(lengtharray);
	}


}
