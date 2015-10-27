// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: This is probably not suitable as a entire game, but as 
//         one part of a game. In this part, player plays against computer to 
//         chooses the correct door to pass safely.
// Goals: choose the door without any traps
// Characters: player, computer, door rigged with bucket of water, door rigged for pie
//             in the face, door without traps
// Objects: --player 1 (record), computer(result)
//          --safe door(message: You made the right choice!)
//          --door with bucket of water (message: Oh, no! You just got soaked!)
//          --door with pie (message: Oh, no! I hope you like pie!)
//
//
// Functions: --player chooses door
//            --computer assigns door randomly
//            --result for choice
//
// Pseudocode
//--create prompt to explain that player has to choose the correct door to
//--create objects for players with name and result
//--prompt player 1 to choose from doors 1-3
//--computer randomly assigns door to numbers 1-3 and puts out reault
//--input result to player 1's info
//--prompt player 2 to choose from doors 1-3
//--computer randomly assigns door to numbers 1-3 and puts out result
//--input result to player 2's info
//--print results of players 1 and 2
//
//
//
//

// Initial Code: Please NOTE: There are kinks in the code that I was not able to solve.
console.log("Can you outsmart the computer? You and the computer will each select one door and see whether you made the right choice.");
var door1 = {
  name: "door 1",	
  type: "no traps",
  message: "You made the right choice."
}

var door2 = {
  name: "door 2",
  type: "bucket of water",
  message: "Oh, no! You just got soaked!"
}

var door3 = {
  name: "door 3",
  type: "throw pie",
  message: "Oh, no! I hope you like pie!" 
}

var player = {record: 0};
var computer = {record: 0};
// var playerName = prompt("What is your name?");
// player.name = String(playerName);
// console.log(player.name);

var playerChoice = function() {
  var playerResponse = prompt("There are three doors. Choose 1, 2, or 3 to indicate your choice.");
  if (playerResponse === 1) {
    return playerResponse = door1;
  }
  else if(playerResponse === 2) {
    return playerResponse = door2;
  }
  else {
    return playerResponse = door3;
  }
 console.log("You selected " + playerResponse.name + "." + playerResponse.message); 
};

var computerChoice = function(door1, door2, door3) {
//   var choice = Math.random();
    if (choice < 0.34) {
    choice = door1.name;
    } 
    else if(choice <= 0.67) {
    choice = door2;
    } 
    else {
    choice = door3;
    }
  console.log("You selected " + computerChoice.name + "." + computerChoice.message);   
}; 
var compare = function(choice1, choice2) {
    if(choice1 === choice2) {
      if(choice1 === door1 && choice2 === door1) {
      player.record = player.record + 1;
      computer.record = computer.record + 1;
        return "You both passed. The result is a tie!";
         }     
    }
    else (choice1 != choice2) {   
      if (choice1 === door1 && choice2 != door1) {
          player.record = player.record + 1;
          return "You passed. You won over the computer!";
      }
      else if(choice2 === door1 && choice 1 != door1) {
          computer.record = computer.record + 1;
          return "The computer passed. The computer won!";
      }
      else {
      return "Neither of you passed. There is no winner."
      }
    } 
};
compare(playerChoice,computerChoice);
console.log("Results:" + " " + player.record + ", " + computer.record);

// Refactored Code
//The code has issues that I was not able to solve. I'm sure that many of the codes can be simplified, but not familiar enough 
//with program. Instead, I deleted elements that seemed unncecssary.



// Reflection
//What was the most difficult part of this challenge? The most difficult part was in
//deciding what type of game and then working out the logistics to meet both the assignment
//requirements and the logic for the set up of the game. 
// What did you learn about creating objects and functions that interact with one another?
// I learned that objections and functions work similiar to methods and classes in that you
// can call functions on objects.
// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// For this game, I stuck to the methods that I had learned for practice and did not venture out to explore new ones, I  
// How can you access and manipulate properties of objects? Properticesof objects can be accessed by
//calling on them. For example, to access the name property of an object, can call it by
//[Object].name
//
//
//
//
//
//