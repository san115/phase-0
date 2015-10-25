
// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Un Choi.

// Pseudocode
// 1. Turn the number into a string
// 2. Find the legnth of the string and assign it to a variable.
// 3. Apply commas in the string at every 4th, 7th, 10th, etc. position from the back of the number.


// Initial Solution
function separateComma (number){
// Turn the number into a string.
var string_number = String(number);
//   console.log(string_number);
  if (string_number.length <= 3)
    return number;
  else 
    var reverse_number = string_number.split("").reverse().join("");
    var number_with_commas = reverse_number
    for (var position = 0; position < reverse_number.length; position++)
      if ((position+1) % 4 == 0 && position != 0) 
        var number_with_commas = [number_with_commas.slice(0, position), ",", number_with_commas.slice(position)].join("");
    var final_number = number_with_commas.split("").reverse().join("");
       return final_number
}
  
//     console.log(string_number);
//     var output = [a.slice(0, position), b, a.slice(position)].join('');
//     for (var count = 0; count < exponent; count++)


// console.log(string_number);

//   else
    




// Refactored Solution
function reverse(string) {
  return string.split("").reverse().join("");
}

function separateComma (number) {
var string_number = String(number);
  if (string_number.length <= 3)
    return number;
  else 
    var reverse_number = reverse(string_number);
    var number_with_commas = reverse_number;
    for (var position = 0; position < reverse_number.length; position++)
      if ((position+1) % 4 == 0 && position != 0) 
        var number_with_commas = [number_with_commas.slice(0, position), ",", number_with_commas.slice(position)].join("");
    var final_number = reverse(number_with_commas);
       return(final_number);
}


// Your Own Tests (OPTIONAL)

// separateComma(12345678)


// Reflection
// What was it like to approach the problem from the perspective of JavaScript? 
// Did you approach the problem differently? The approach to the solution is similar in that we used iterated through
// the number, which we converted to string. One major difference is in reversing the string
// before inserting the comma, then reversing the string back again.
// What did you learn about iterating over arrays in JavaScript? It works similiarly to Ruby
// in that it requires a counter with intial and end values.
// What was different about solving this problem in JavaScript? The syntax was the major difference as well as the
// reversing the string to insert commas.
// What built-in methods did you find to incorporate in your refactored solution?
// We used length, reverse, and join built-in methods. Also, created a function that reverses the string, then
// called it in the separage Comma function.

