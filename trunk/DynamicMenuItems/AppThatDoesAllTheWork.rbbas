#tag Class
Protected Class AppThatDoesAllTheWork
Inherits Application
	#tag Event
		Sub EnableMenuItems()
		  // enabling for the menu items added through NewDynamic
		  // you can put logic in here to decide if individual dynamic items are enabled or not depending on program state
		  dim i as integer
		  for i = UBound(mDynamicMenuItems) downto 0
		    mDynamicMenuItems(i).enabled = true
		  next i
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function FileNew(index as Integer) As Boolean Handles FileNew.Action
			' attempt to insert a dynamic item in the File menu where none has gone before
			dim newFM as MenuItem
			if index=0 then
			mFileInserts = mFileInserts + 1 '  use 1-based so default of 0 ensures no enable attempts
			newFM = new FileNew '  this adds it to the menu below the others in the array FileNew
			newFM.Text = "Inserted Item "+str(mFileInserts)
			else
			' would later react to these items
			MsgBox FileMenu.Item(index).text
			end if
			return true
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function TestDellastFileDynamic() As Boolean Handles TestDellastFileDynamic.Action
			dim lastFM as MenuItem = FileNew(mFileInserts)
			if not (lastFM is nil) then
			lastFM.close()
			mFileInserts = mFileInserts - 1
			end if
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function NewDynamic() As Boolean Handles NewDynamic.Action
			// get the top-level menu, which does NOT appear at startup
			const TotallyDynamicTitle = "Totally"
			dim tdMenu as MenuItem = app.MenuBar.child( TotallyDynamicTitle )
			if tdMenu is nil then
			tdMenu = new MenuItem( TotallyDynamicTitle )
			App.MenuBar.Insert(2, tdMenu)
			end if
			
			dim dynItem as new MenuItem( "Dynamic dude "  )
			dynItem.Name = "DynamicItem"
			tdMenu.Append dynItem
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function DynamicItem() As Boolean Handles DynamicItem.Action
			// This is the handler for a dynamically created item. We carefully named the handler the same as the
			// name we intended to use on the future menu item.
			// There is no way to specify a menu handler with index as a parameter, thus we do the same logic
			// no matter which item is invoked.
			MsgBox "Dude!"
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function NewDynamicSubclass() As Boolean Handles NewDynamicSubclass.Action
			// add unique menu items using a delegate to be handled
			// these items don't need any logic in EnableMenuItems - the DynamicallyHandledMenuItem class
			// enables itself if it has a delegate handler, mimicing the "autoenable" behaviour.
			
			// get the top-level menu, which does NOT appear at startup
			const TotallyDynamicTitle = "Totally"
			dim tdMenu as MenuItem = app.MenuBar.child( TotallyDynamicTitle )
			if tdMenu is nil then
			tdMenu = new MenuItem( TotallyDynamicTitle )
			App.MenuBar.Insert(2, tdMenu)
			end if
			
			static dynItemIndex as integer  // easy way to keep ascending index values, starts at zero, just to generate unique names
			dim dynItem as new DynamicallyHandledMenuItem( AddressOf HandleDynamicSubItem,  "Dynamic sub dude " + str(dynItemIndex) )
			dynItem.Name = "DynamicSubItem"
			dynItem.Tag = "Created at " + str(Microseconds)  // instead of setting index, like the NewDynamic sample, put arbitrary value into the Tag
			dynItemIndex = dynItemIndex + 1
			tdMenu.Append dynItem
			Return True
			
			Return True
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Function HandleDynamicSubItem(handleItem as DynamicallyHandledMenuItem) As Boolean
		  // This is the handler for a dynamically created item.
		  // it needs to be passed as a delegate, so it matches DynamicallyHandledMenuItem.DynamicMenuHandler
		  
		  MsgBox "Hey, dynamic dude  " + handleItem.Tag.StringValue
		  Return True
		  
		End Function
	#tag EndMethod


	#tag Note, Name = About
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
	#tag EndNote


	#tag Property, Flags = &h1
		Protected mFileInserts As integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mEditInserts As integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mDynamicMenuItems(-1) As MenuItem
	#tag EndProperty


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
