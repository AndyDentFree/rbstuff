Shows three different ways of handling dynamic menu items and adding an entire top-level menu

See the [source in svn](http://code.google.com/p/rbstuff/source/browse/#svn/trunk/DynamicMenuItems) or [Download a zip](http://rbstuff.googlecode.com/files/DynamicMenuItems.zip).

## Cloning Approach (traditional) ##
Tests inserting an item into the File Menu and how to react.
I wrote this because the explanation in the `MenuItem` help
shows how to insert the item but not clearly how to react.

The main advice I've seen is to write a menu handler you have to have a
menu item with an index, as described in `RBDeveloper` 1.1

It works by a cloning approach - you must have a clonable (ie: indexed)
menu item to start with.

This matches the advice given in the notes on `MenuItem` in the Language Ref of RB2009r2
under the heading of `MenuItem` Arrays. **Warning** whilst the Language Ref in RB2009r2.1 still includes this section, I have been informed by Real Software Support that they no longer recommend this approach - see the `OpenRecents` example in the Examples/Menu Items folder instead.

Note that although the index property is not a parameter of the menuhandler
it seems to be available provided the `MenuItem` being handled has an index.

There is no way to specify a menu handler with index as a parameter, unlike control event handlers


## Adding Menu Items - needs unique names ##
See the menu handlers `NewDynamic` and `DynamicItem`. This works as a way to create the menu items dynamically, provided you use unique names, but you can't treat them as indexed items because the menu handler lacks an index.


## Subclassing with Delegate as Handler ##
This is a comparatively recent way to implement dynamic menu items due to Delegates being added in the last couple of years.

Instead of using a `MenuHandler`, pass a delegate function into a subclass of `MenuItem` when you create it.
See `NewDynamicSubclass` and the handler method `HandleDynamicSubItem.`

Note that you don't have to make them indexed subitems, because the entire menu item is passed to the delegate, you have easy access to the Tag parameter of the menu item, unlike traditional handlers.

This delegate approach means you only need to add ONE subclass to your project, the [DynamicDelegatingMenuItem](http://code.google.com/p/rbstuff/source/browse/trunk/Common/DynamicDelegatingMenuItem.xml) and you can have any number of dynamic menu items with unique handlers