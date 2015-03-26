Drawing:
  * All the colors and graphics drawing primitives in GraphicsScripter
  * `Avenue2X` - convert an avenue number to a coordinate for use with graphics
  * `AvenueGapX` - pixel gaps from left edge of one Avenue to the next
  * `Street2Y` - convert a street number to a coordinate for use with graphics
  * `StreetGapY` - pixel gaps from top edge of one Street to the next

Karel control:

Most of these are used to implement Karel behaviours so could be moved into protected functions - I thought it was interesting to leave them exposed for now:
  * `ErrorShutdown` - the handler called when do something illegal
  * `IsRunning` - true if Karel is running, ie: after a TurnOn and no error or TurnOff
  * `LeftDirection` - returns the direction (North, South, East or West) to Karel's Left
  * `MovePause` - number of seconds to pause at each move
  * `NextAvenue` - the number of the avenue Karel will move to if he Moves without turning
  * `NextStreet` - the number of the street Karel will move to if he Moves without turning
  * `RightDirection` - returns the direction (North, South, East or West) to Karel's Right
  * `Wait` - the delay method, takes a number of seconds. Used internally to implement the MovePause and I thought I may as well make it available to the Karel user

Other Features:
  * `Say` - invokes the REALbasic Speak command