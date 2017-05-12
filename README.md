# Battleships

# Languages & Frameworks
The game is written in Ruby, to run it make sure you'll need Ruby installed on your computer.
No frameworks were used.

# How to run:
Currently the game is at the development and testing stage; to run all tests enter "ruby run_specs.sh" into the terminal while in the top level. 

##Response to Brief

1. Build a Board
I saw that I'd be creating a Primary Board and Tracking Board with some functions duplication, 
so I created a Board object as a super class.

2. Primary Board

I created the Primary Board class which, when instantiated, created 10 arrays 
with a nested array of 10 strings in each. This represented the 10 x 10 grid.
All the strings were a cell object, which have the default content of "empty" 
i.e. not containing a ship and shot begins as false.

I created the functions add_ship_to, add_ship_horizontally and add_ship_vertically 
to allow the user to place ships on the primary board. When the ships were placed
on cells, the cell's content changed to "full".

Primary Board class inherits several functions from Board.

3. Tracking Board

I then created the Tracking Board class, which inherits from the super-class board.  
I created a tracking cell class with the default content of "unknown" then becomes either
"full" or "empty" during the game after a player has fired at it.

4. Player

I created the player object to allow for a player to shoot at the opponents ships and tell the opponent
when the opponent has hit the player's ship.

5. Ship
The ship has a name, health and sunk status. It also have the function receive shot so it can alter it's health
when it's shot.

6. Game
I created the game class to manage the players in the game, who's turn it is and who has won.

# With more time:

With more time I would have added:
1. A terminal app, allowing the user to play the game.
2. A function to determine when one player has won.
3. Function guards
  (i) to make sure a user doesn't place a ship where one is already placed.
  (ii)to make sure the user has to place ships on the 10 x 10 grid.
4. I would have changed the board so that the grid is A - J, 1 - 10, and each cell has a letter and number e.g. A1.
5. A start.bh file to run the game.
6. Cell as a super-class.
7. Evaluate if instance variables should be attr_accessor or attr_reader.
8. Enter in the ship types as modules.
9. More dialogue between players.

I really enjoyed taking on this challenge and learned from the problems I encountered.  Namely, I'm not familiar with .bat or .sh files
beyond using them to run specs files, therefore this is something I'll need to learn more about.

To create the grid, I instantiated Array objects in the Primary Board and Tracking Board constructors,
whereas I now feel like it would be better to write a function in the Board super-class, which they inherit.

Lastly, I got stuck creating a function to sink ships, I plan to continue learning and working on this.
