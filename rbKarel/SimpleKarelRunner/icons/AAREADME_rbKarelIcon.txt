how the icon was created by Andy Dent, an amateur

REALBasic requires you provide icon and mask pictures in the various sizes.

As a concept, I wanted to try an icon a bit like a Karel world

Iconographer
------------
KIcon is an Iconographer file with copy of the 128x128 icon in KIcon.png

I found Iconographer too hard to use - it is obsolete and the graphics don't work,
antialising is broken and the mask creation created a really bad mask.


VectorDesigner
--------------
In VectorDesigner, I was able to specify a 128 by 128 document
- created a text object
- Format - Text to Paths
- Arrange - Convert Stroke to Outline

The end result of that and drawing shapes over the top was nicely anti-aliased and 
exported to rbKarel-app-128.png


Production in Gimp
------------------------
I then started editing a copy of rbKarel-app-128.png to create a mask in Gimp.

Simply
- Colorize, which turned most colors near black
- hand-editing to fill in the middle of the "K" with solid black

Other Sizes
------------

Repeated the above two stage, resizing down in VectorDesigner from 128 to 48
and then cleaning up resulting image in Gimp.