
// declare function that takes a string variable.
// split string into array
// is there a reverse method for arrays? if not:
// return the character at -1 in the array 
// iterate string.length times 
// join the result into a string and print


function reverse(string) {
  var newstring = string.split('').reverse().join('');
  console.log(newstring);
}

reverse("not a palindrome")


var some_boolean_test = true
if (some_boolean_test) {
    reverse("animal")
}

var other_boolean_test = false
if (other_boolean_test) {
    reverse("mother")
}
