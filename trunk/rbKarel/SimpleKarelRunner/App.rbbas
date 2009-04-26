#tag Class
Protected Class App
Inherits Application
	#tag MenuHandler
		Function About() As Boolean Handles About.Action
			dim msg as new MessageDialog
			msg.Title = "About ScriptGraphics"
			msg.Message = "ScriptGraphics lets you write RBScripts to draw on a canvas"
			msg.Explanation = "this app by Andy Dent - dent@oofile.com.au"
			msg.Icon = 0
			dim b as MessageDialogButton = msg.ShowModal()
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
