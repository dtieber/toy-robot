### Toy Robot :robot:

The application is designed to simulate a toy robot navigating a 5x5 square tabletop. There are no obstacles on the table, allowing the robot to move freely. Any actions that would cause the robot to fall off the table are blocked, though the robot can continue following other valid movement commands.

The application reads input from a file specified through the command line. The following commands are recognized:
* PLACE X,Y,F
* MOVE
* LEFT
* RIGHT
* REPORT

Here are the rules for these commands:
* PLACE sets the toy robot on the table at coordinates X,Y, facing one of the four cardinal directions (NORTH, SOUTH, EAST, or WEST).
* The coordinates (0,0) mark the southwest corner of the table.
* No commands are executed until the robot is properly placed on the table.
* MOVE advances the robot one unit in the direction it is currently facing.
* LEFT and RIGHT rotate the robot 90 degrees in the respective direction without changing its position.
* REPORT outputs the current position and orientation of the robot (X,Y,F).

##### Commands
* Install deps: `$ mix deps.get`
* Run tests: `$ mix tests`
* Create docs: `$ mix docs`
* Run static code analysis: `$ mix credo`
* Start toy robot: `$ mix run robot.exs`
