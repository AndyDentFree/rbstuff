#tag Class
Protected Class App
Inherits Application
	#tag MenuHandler
		Function KarelAbout() As Boolean Handles KarelAbout.Action
			SimpleKarelAbout.ShowModal
		End Function
	#tag EndMenuHandler


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
