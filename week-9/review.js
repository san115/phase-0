// Release 1: Create User Story
//Create a code that will generate a grocery list that contains the 
//type of item and quantity. The code should also allow for new items to be added,
//delete items, or change quantities of items on the list. Then, code should also
//enable the list to be printed.

// Release 2: Pseudocode
//--create function that will contain list of items and quantity that can be
//called on to create a new list in an array
//--create a function that when called will add an item to the list
//--create a function that will remove an item from the list
//--create a function that will update quantities for an item in list
//--create function that will print out grocery list by setting up loop to 
//iterate through each element in the list and print it to the console.

// Release 3: Initial Solution
function GroceryList(item, quantity) {
  this.item = item;
  this.quantity = quantity;
}

// create new list
var list = new GroceryList();
list[0] = new GroceryList("banana", 4);
list[1] = new GroceryList("apple", 2);
list[2] = new GroceryList("soup", 3);
list[3] = new GroceryList("egg", 12);
list[4] = new GroceryList("bread", 1);
list[5] = new GroceryList("chocolate", 10);

//add an item with a quantity to the list
list.push("orange", 2);

//remove an item from the list
delete list[2];

//update quantities for item in list
list[3].quantity = 6;

// loop through our new array and print the list
for (var i = 0; i < list.length; i++) {
    console.log(list[i].item + ": " + list[i].quantity);
}

// Release 4: Refactor
function GroceryList(item, quantity) {
  this.item = item;
  this.quantity = quantity;
 
var addList = function() {
    GroceryList.push(item, quantity);
  };
 
var updateList = function() {
    GroceryList.quantity
  };

var show = function() {
  for (var i = 0; i < list.length; i++) {
    console.log(list[i].item + ": " + list[i].quantity);
    }
  };

// create new list
var list = new Array();
list[0] = new GroceryList("banana", 4);
list[1] = new GroceryList("apple", 2);
list[2] = new GroceryList("soup", 3);
list[3] = new GroceryList("egg", 12);
list[4] = new GroceryList("bread", 1);
list[5] = new GroceryList("chocolate", 10);

list.addList("orange", 2);
delete list[2];
list.updateList(6);
list.show
// Release 5: Reflections
// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
// What was the most difficult part of this challenge?
// Did an array or object make more sense to use and why?