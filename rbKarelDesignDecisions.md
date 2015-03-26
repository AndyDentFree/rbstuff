It helps to have read the [RBScriptPrimer](RBScriptPrimer.md)

## World Objects Representation ##
I am using RBScript to provide the interpretation for rbKarel but that doesn't mean the entire world has to live in a single RBScript.

Do we need to represent Beepers as objects? They really only have presence as a token on a grid intersection or as a count of beepers in the beeper-bag.

It is tempting to think of a more complex version in future with different kinds of beepers and other objects which need to retain at least identity and possibly state whether they are visible or in the bag. That can wait until v2!


## Accessible Karel ##
I've been musing about being able to _inject_ state observes into Karel so each time he changes state, they are triggered. This would allow for an accessible version where Karel's location and results from his sensors is spoken. it is also the nearest to a step-wise debugger we're going to get.

Hmm, thinking aloud - if we have Karel call the environment every time his state changes (ie: moves or turns) then there can indeed be a graphical inspector that stops him moving any further until the user OK's it.

It is not stepwise debugging in the sense of being able to breakpoint code or see where the code is executing but for most cases it would probably be enough. This leads me to the consideration of cancelling a run:

## Halting ##
Either from user input or a Karel program triggering _error shuttof_ (eg: run into a wall) we need a way to cancel a loop running in the RBScript.

As discussed above, if we have a call to store state in the context object by Move or Turn commands, that gives us a potential interruption point. Hopefully the RBScript Reset method will do the job.

## Line Numbers and Debugging ##
It just occurred to me that if we post-process the user logic, a line number parameter could be added to each of the Karel verbs. That means a debugger **can** link the verb from which it has been invoked to the source line.

I don't think there's any easy way to make it possible to see variables that are defined in RBScript in a debugger but that is not a level of sophistication that we need.