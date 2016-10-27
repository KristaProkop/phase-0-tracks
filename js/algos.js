//FUNCTION Find Longest String
//input: 	array data
//algorithm:
// 		define initial length variable at zero
// 		define empty variable for result
//		start counter at zero and add 1 after each iteration through the array
// 		if the length of the word at index 0 is longer than the current length variable
// 		then assign the length of the word at index 0 to the length variable
// 		and assign the word to the result variable
//output:  	result
//// 

function longest_string(array) {
	var long = 0;
	var result;
	for(var index = 0; index < array.length; index++){
	    if(array[index].length > long){
	        var long = array[index].length;
	        result = array[index];
	    }      
	}
	console.log ("'" + result + "'" + " is the longest string in the array");
	}

longest_string(["long phrase","longest phrase","longer phrase"])

// write a function that takes two objects and checks to see if the objects share at least one key-value pair. (You'll keep adding to this file, so we suggest grouping functions at the top and testing at the bottom of the file.) If we called your function with {name: "Steven", age: 54} and {name: "Tamir", age: 54}, the function would return true, because at least one key-value pair matches between the two objects. If no pairs match (and keep in mind that the two objects may not even have any of the same keys), the function should return false. To make your life easier, don't worry about whether a property is a string ('age') or an identifier name (age). Those can be considered equivalent. Again, try to reason through the problem using the basics you've already learned, rather than looking up slick search functions that will do the job for you. We'd rather see you write code that you actually understand!
// Add some driver code that tests both outcomes of your function.

//define function with 2 parameters
//find matching key and value pair
//If match return true
//else false

var array = [{name: "Steven", age: "54"}
	,{name: "Tamir", age: "54"}];


// Write a function that takes an integer for length, and builds and returns an array of strings of the given length. So if we ran your function with an argument of 3, we would get an array of 3 random words back (the words don't have to be actual sensical English words -- "nnnnfph" totally counts). The words should be of randomly varying length, with a minimum of 1 letter and a maximum of 10 letters. (This involves a new trick, generating a random number, that you'll have to look up, but the solution on how to do so is relatively straightforward.)
// Add driver code that does the following 10 times: generates an array, prints the array, feeds the array to your "longest word" function, and prints the result.


// function generate random strings
// input : an integer
// algorithm :
//    create new empty array output
//    create string of alphabet characters
//    FOR a number of times equal to integer input
//      initialize a string in the index of the loop in the array
//      generate a random length of word
//      FOR a number of times equal to the random length
//        add a random letter from the alphabet to the array at the location of the index from the outer for loop
// output: output variable
