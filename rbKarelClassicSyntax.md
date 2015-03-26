## How we might cope ##

A simple program like that on [Wikipedia](http://en.wikipedia.org/wiki/Karel_(programming_language)) looks like

```
BEGINNING-OF-PROGRAM
 
 DEFINE turnright AS
 BEGIN
   turnleft;
   turnleft;
   turnleft
 END
 
 BEGINNING-OF-EXECUTION
   ITERATE 3 TIMES
     turnright;
   move;
   turnoff
 END-OF-EXECUTION
 
END-OF-PROGRAM
```

We can process that text before running it in RBScript to sanitise a few obvious points:
  * if multiple statements are separated by semi-colons on a single line, break onto multiple lines
  * remove semi-colons at the end of the line
  * if a THEN statement is on a new line put it on the previous line
  * strip  BEGINNING-OF-PROGRAM and END-OF-PROGRAM and any text before or after what they bracket
  * translate routine definitions into subroutines

```
DEFINE turnright AS
 BEGIN
...
 END
```

becomes
```
Sub turnright
...
End Sub
```

## Translating Iterate ##
The iterate command is pretty fundamental to Karel, allowing a single statement to be iterated according to the [doumentation](http://karel.sourceforge.net/doc/html_mono/karel.html#SEC23).

Consider the canonical syntax:
```
  ITERATE <positive-integer> TIMES
    <stmt>
```
There are a number of possible ways it could be handled, all of which involve a certain degree of parsing the input code and converting it before running the script:
  * change it into a for..next loop. This requires a unique index variable be generated each time because the for..next in RBScript doesn't support `for i as integer...` syntax.
  * factor out each primitive statement or defined function to be run in a separate RBScript object so it becomes `Iterate( 3, "TurnLeft")` for example, with the iteration count becoming a parameter and the statement being wrapped in a string argument to be sent to another RBScript object N times.