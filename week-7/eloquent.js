// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var sol = 40, la = 50;
sol = sol + la;
console.log(sol);

// favorite food
var favorite_food = prompt("What is your favorite food?", "");
alert("Hey, that's my favorite food, too!");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
//Triangle:
var triangle = "";
for (var number = 1; number <=7; number ++)
  console.log(triangle += "#")

//FizzBuzz:
var div_three = "Fizz";
var div_five = "Fuzz";
var div_both = "FizzBuzz";
for (var number = 1; number <= 100; number ++)
if (number % 3 == 0 && number % 5 == 0)	console.log(div_both);
else if (number % 5 == 0) console.log(div_five);
else if (number % 3 == 0) console.log(div_three);
else console.log(number);

// Functions

// Complete the `minimum` exercise.
function min(a,b) {
  if (a < b) return a;
  if (a > b) return b;
}

console.log(min(0, 10));
// → 0
console.log(min(0, -10));
// → -10


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
	name: "Un",
	age: 47,
	favorite_foods: ["chocolate", "cheese", "Concord grapes"],
	quirk: "absolutely no sense of direction"
};