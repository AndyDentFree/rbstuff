#tag Class
Protected Class App
Inherits Application
	#tag MenuHandler
		Function About() As Boolean Handles About.Action
			dim msg as new MessageDialog
			msg.Title = "About ScriptPictureEffects"
			msg.Message = "ScriptPictureEffects lets you play with Einhugur's Picture Effects via RBScript"
			msg.Explanation = "see http://www.einhugur.com/ for the plugins"+EndofLine+"this app by Andy Dent - dent@oofile.com.au"
			msg.Icon = 0
			dim b as MessageDialogButton = msg.ShowModal()
		End Function
	#tag EndMenuHandler


	#tag Note, Name = About
		App to test if an RBScript can invoke the Einhugur functions and allow you to play with
		the Graphics interface in a script.
		
		This example is released as freeware for any use in gratitude to all the people who've helped me
		with REALbasic and other programming over the years.
		
		Andy Dent
		dent@oofile.com.au
	#tag EndNote


End Class
#tag EndClass
