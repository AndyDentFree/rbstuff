#tag Class
Protected Class Calculator
	#tag Method, Flags = &h0
		Sub GenerateScript()
		  // eg Vcc = (5V&J1A&!J1B) | (3.3V&!J1A&J1B) | (0V&!JA1&!J1B).
		  // succession of replaces as individual variables to make it easier to see in debugger
		  dim step1 as string = OriginalScript.ReplaceAll("|", " or ")
		  dim step2 as string = step1.ReplaceAll("&", " and ")
		  dim step3 as string = step2.ReplaceAll("!", " not ")
		  dim step4 as string = step3.ReplaceAll("V", "")  // strip all the V suffixes
		  GeneratedScript = "VCC = " + step4
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RunScript()
		  dim r as new RbScript
		  r.Context = self
		  r.Run
		End Sub
	#tag EndMethod


	#tag Note, Name = about
		
		This class is both the context object for running an RBScript and instantiates the RBScript and produces the result so it is a drop-in solution.z
	#tag EndNote


	#tag Property, Flags = &h0
		GeneratedScript As string
	#tag EndProperty

	#tag Property, Flags = &h0
		J1a As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		J1b As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		OriginalScript As string
	#tag EndProperty

	#tag Property, Flags = &h0
		VCC As Double
	#tag EndProperty


End Class
#tag EndClass
