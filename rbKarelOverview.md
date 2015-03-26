See [rbKarelGettingStarted](rbKarelGettingStarted.md) for a quick guide on how to use the program.

![http://www.aussiedesignedsoftware.com/img/rbKarelLoaded.png](http://www.aussiedesignedsoftware.com/img/rbKarelLoaded.png)

## Introduction ##

Conceptual port of "Karel the Robot" to REALbasic
but using the built-in RBScript language rather than writing our own parser, which
means examples written here will also work as source within REALbasic programs.

Note that this version is not based on any source code from any previous Karel implementations, just on  [public documentation](http://www.cs.mtsu.edu/~untch/karel/) of how Karel works.

## Goals ##
  * Implement a first version very quickly but without disappearing down too many confining rat holes.
  * Compromise the parser by using RBScript so don't try to copy everything in the classical language.

## Achieved in 1.0 ##
A version 1.0 with robust document management, walls and Karel scripts being managed separately, including folders of initial samples that are loaded onto menus.

  * All the major Karel commands working plus a few others such as Say.
  * A shortcut definition of `i as integer` so people can write loops `for i = 1 to 4` without having to understand about dimensioning a variable. It's smart enough to only include that definition if there isn't one already in the script.
  * Live control over the stepping speed.
  * Live ability to turn single-stepping on and off.
  * Live speech logging each action, can be turned on and off.
  * All items in the Karel world drawn using GraphicsScripter primitives so it will be reasonably straightforward to provide user overrides of drawing shapes, for more advanced classes.

All in a version compatible with the Personal edition of REALbasic, for entry-level users to modify.

## Nice to have ##
  * user override of drawing Karel, beepers, walls, background
  * able to paste in examples from classical Karel (done, apart from ITERATE)
  * simpler graphical way to handle some things like drawing walls
  * drawing pictures that are selected through File Open dialogs and remembered as named graphics (or file paths)
  * Karel-centric drawing so the drawing primitives exposed through GraphicsScripter can be used without explicit coords - implemented by providing coordinate transformation from Avenue2X and Street2Y.
  * debugger with ability to break based on Karel's state as he moves, so you could stop as he got close to a wall (without explicitly writing this into the Karel program)
  * Observable properties with the ability to build GUI elements to configure them, like Netlogo. For example, if MovePause was exposed as a Karel property, a Karel program updating it (so the user controls variable speed) should trigger a GUI slider being updated if one is visible.

## Karel Links ##
  * [Java version](http://karel.sourceforge.net/)
  * [Karel home page](http://www.cs.mtsu.edu/~untch/karel/)
  * [RBDeveloper Issue 8.1 Nov/Dec 2009](http://www.rbdeveloper.com/browse/8.1/) Cover article