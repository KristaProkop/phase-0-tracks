//define array data
// define initial length variable at zero
// define empty variable for result
//start counter at zero and add 1 after each iteration
// if the length of the word at index 0 is longer than the current length variable
// then assign the length of the word at index 0 to the length variable
// and assign the word to the result variable
// loop until end of array
// print result
// 


//// TO-DO: WHERE DID MY OTHER WORKING FILE GO? FIND IT AND UPLOAD IT
var array = ["dogs and cats","dogs and birds","horses and goats"];


var long = 0;
var result;

for(var i = 0; i < array.length; i++){
    if(array[i].length > long){
        var long = array[i].length;
        result = array[i];
    }      
} 

console.log("'" + result + "'" + " is the longest string in the array");