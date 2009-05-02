Shows three different ways of handling dynamic menu items and adding an entire top-level menu

CLONING APPROACH
Tests inserting an item into the File Menu and how to react.
I wrote this because the explanation in the MenuItem help
shows how to insert the item but not clearly how to react.

The main advice I've seen is to write a menu handler you have to have a 
menu item with an index, as described in RBDeveloper 1.1

It works by a cloning approach - you must have a clonable (ie: indexed)
menu item to start with. 

This matches the advice given in the notes on MenuItem in the Language Ref of RB2009r2
under the heading of MenuItem Arrays.

Note that although the index property is not a parameter of the menuhandler
it seems to be available provided the MenuItem being handled has an index. 

There is no way to specify a menu handler with index as a parameter, unlike control event handlers


ADDING MENU ITEMS APPROACH - UNIQUE NAMES
See the menu handlers NewDynamic and DynamicItem. This works as a way to create the menu items dynamically,
provided you use unique names, but you can't treat them as indexed items because the menu handler lacks an index.


SUBCLASSING MENUITEM WITH DELEGATE 
Instead of using a MenuHandler, pass a delegate function into a subclass of MenuItem when you create it.
See NewDynamicSubclass and the handler method HandleDynamicSubItem.

Note that you don't have to make them indexed subitems - any information could be used including the normal Tag parameter
