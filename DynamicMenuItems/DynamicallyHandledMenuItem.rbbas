#tag Class
Protected Class DynamicallyHandledMenuItem
Inherits MenuItem
	#tag Event
		Sub EnableMenu()
		  self.Enabled = mHandler <> nil
		End Sub
	#tag EndEvent

	#tag Event
		Function Action() As Boolean
		  return mHandler.Invoke( self )
		End Function
	#tag EndEvent


	#tag DelegateDeclaration, Flags = &h0
		Delegate Function DynamicMenuHandler(handleItem as DynamicallyHandledMenuItem) As Boolean
	#tag EndDelegateDeclaration

	#tag Method, Flags = &h0
		Sub Constructor(handler as DynamicMenuHandler)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor(Text As String, Tag As Variant=Nil) -- From MenuItem
		  // Constructor() -- From MenuItem
		  Super.Constructor
		  mHandler = handler
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(handler as DynamicMenuHandler, Text As String, Tag As Variant=Nil)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor(Text As String, Tag As Variant=Nil) -- From MenuItem
		  // Constructor() -- From MenuItem
		  Super.Constructor Text, Tag
		  mHandler = handler
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected mHandler As DynamicMenuHandler
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="MenuItem"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			InheritedFrom="MenuItem"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Text"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="MenuItem"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Checked"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
			InheritedFrom="MenuItem"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
			InheritedFrom="MenuItem"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
			InheritedFrom="MenuItem"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CommandKey"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="MenuItem"
		#tag EndViewProperty
		#tag ViewProperty
			Name="KeyboardShortcut"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="MenuItem"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_Bold"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
			InheritedFrom="MenuItem"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_Italic"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
			InheritedFrom="MenuItem"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_Underline"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
			InheritedFrom="MenuItem"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoEnable"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
			InheritedFrom="MenuItem"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_mName"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="MenuItem"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_mIndex"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="MenuItem"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Icon"
			Group="Behavior"
			InitialValue="0"
			Type="Picture"
			InheritedFrom="MenuItem"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
