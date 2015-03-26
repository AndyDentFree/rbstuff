A simpler example than ScriptPictureEffects which just exposes the REALbasic Graphics class as an RBScript object.

The sample program doesn't have a popup list of scripts like ScriptPictureEffects but the window is resizeable.

It has a bit more flexibility in the core GraphicsScripter class compared to PictureEffectsScripter - it also has the option of passing in a Graphics context with UseGraphics where PIctureEffectsScripter asks you to pass in a destination Picture and thus requires a Canvas with Backdrop.

Apart from that, the methods are all identical and GraphicsScripter is a clean subset of PictureEffectsScripter.