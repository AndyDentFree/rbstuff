# Super-quick start #
Run the program
  * choose a world eg: Worlds menu -> Mountains
  * press Load World - see the world picture change
  * choose a script, eg: Scripts menu -> Mountain Climber
  * press Run and see Karel run

# Introduction #

I was first introduced to Karel the Robot while watching an online Stanford University lecture on 'Programming Methadology' by Professor Mehran Sahami. You can watch all 28 parts of the lecture via iTunes U with the link below.

http://deimos3.apple.com/WebObjects/Core.woa/Browse/itunes.stanford.edu.1615329425.01615329428

What impressed me about Karel the Robot was the way students were able to learn basic programming techniques and concepts in a unique and enjoyable way. I think the key lies in allowing students to write code which gradually increases in complexity without changing the underlying content of each project. Karel never changes yet Karel's world does change and the student is required to solve problems and get Karel to perform various tasks.

Created by Richard E. Pattis in his book Karel The Robot: A Gentle Introduction to the Art of Programming in 1981 as a way for students to learn Java, the language and simulator has since been ported to a number of other languages. rbKarel is a RealBasic project which contains the core Kerel concepts as well as a number of enhancements.


# Karel Scripts #

Karel understands 4 basic instructions:
  * `Move` - moves Karel forward one square in the direction he is facing
  * `TurnLeft` - turns Karel 90 degrees to the left
  * `PutBeeper` - Places a beeper from his beeper bag at the place where he is standing
  * `PickBeeper` - Picks up a beeper from the square where he is standing

Karel can also detect a number of things about his world including:

  * `FrontIsClear`	 - the field ahead of Karel is clear
  * `FrontIsBlocked` - the field ahead of Karel is blocked
  * `LeftIsClear` - the field on the left hand side of Karel is clear
  * `LeftIsBlocked` - the field on the left hand side of Karel is blocked
  * `RightIsClear`	 - the field on the right hand side of Karel is clear
  * `RightIsBlocked` - the field on the right hand side of Karel is blocked
  * `NextToABeeper` - the field on which Karel is contains a beeper
  * `NotNextToABeeper` - the field on which Karel is does not contain a beeper
  * `AnyBeepersInBeeperBag` - Karel has at least one beeper in his bag
  * `NoBeepersInBeeperBag` - Karel has no beepers in his bag
  * `FacingNorth` - Karel is facing towards north
  * `NotFacingNorth` - Karel is not facing towards north
  * `FacingSouth` - Karel is facing towards south
  * `NotFacingSouth` - Karel is not facing towards south
  * `FacingEast` - Karel is facing towards east
  * `NotFacingEast` - Karel is not facing towards east
  * `FacingWest` - Karel is facing towards west
  * `NotFacingWest` - Karel is not facing towards west

Using the commands above as well as if, while and for statements a Karel script may look something like this:

```
//Start Script

while FrontIsClear
  Move
wend

If LeftIsClear then
  turnLeft
end

For i=0 to 5
  if AnyBeepersInBeeperBag then
    PutBeeper
  end
Next

//End Script
```
In order to develop a students programming skills and solve problems using correct programming techniques, methods can be created. For example the code above could be re-written as:
```
movetonextwall
turnandplacebeeper

sub movetonextwall()
  while FrontIsClear
    Move
  wend
end sub

sub turnandplacebeeper()
  If LeftIsClear then
    turnLeft
  end

  For i=0 to 5
    if AnyBeepersInBeeperBag then
      PutBeeper
    end
  Next
end sub
```

# Karel Worlds #
Worlds are defined by a much simpler RBScript with only four verbs
  * `World rows columns` - defines size of map
  * `Robot vertical_coordinate horizontal_coordinate facing_direction num_beepers` - positions the one and only robot
  * `Beepers vertical_coordinate horizontal_coordinate count`
  * `Wall vertical_coordinate horizontal_coordinate relative_position` - walls are between coordinates so a relative position is given to indicate where they are if you were looking in that direction from the position.