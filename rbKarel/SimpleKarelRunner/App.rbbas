#tag Class
Protected Class App
Inherits Application
	#tag MenuHandler
		Function KarelAbout() As Boolean Handles KarelAbout.Action
			SimpleKarelAbout.ShowModal
		End Function
	#tag EndMenuHandler


	#tag Note, Name = About
		Cut down from App written to test if an RBScript can invoke the Einhugur functions.
		
		In the process I found that the Color.Red, .Hue etc. accessors cause a crash when used in a script
		so cut the app down to be useful without those plugins and send off to RS
	#tag EndNote


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
