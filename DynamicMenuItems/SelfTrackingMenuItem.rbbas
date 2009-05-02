#tag Class
Protected Class SelfTrackingMenuItem
Inherits MenuItem
	#tag Event
		Function Action() As Boolean
		  mMostRecentlyFired = me
		  return Action()  // raise event so can be handled like normal menu item
		End Function
	#tag EndEvent


	#tag Hook, Flags = &h0
		Event Action() As Boolean
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mMostRecentlyFired
			End Get
		#tag EndGetter
		Shared MostRecentlyFired As SelfTrackingMenuItem
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		Protected Shared mMostRecentlyFired As SelfTrackingMenuItem
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
