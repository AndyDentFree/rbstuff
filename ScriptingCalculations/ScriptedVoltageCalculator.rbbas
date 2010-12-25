#tag Class
Protected Class ScriptedVoltageCalculator
	#tag Method, Flags = &h0
		 Shared Function boolToDouble(b as Boolean) As Double
		  if b then
		    return 1.0
		  else
		    return 0.0
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(scriptOnWindow as RbScript)
		  UsingScriptControl = scriptOnWindow
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GenerateScript()
		  // eg 5v(J1A&!J1B) | 3.3V(!J1A&J1B) | 0V(!J1A&!J1B)
		  // succession of replaces as individual variables to make it easier to see in debugger
		  // generates (5 and J1A and  not J1B)  or  (3.3 and  not J1A and J1B)  or  (0 and  not J1A and  not J1B)
		  dim step1 as string = OriginalScript.ReplaceAll("|", " or ")
		  dim step2 as string = step1.ReplaceAll("&", " and ")
		  dim step3 as string = step2.ReplaceAll("!", " not ")
		  // now rework the formula to rename the voltages because we can't have variable names starting with a digit
		  dim step4 as string = step3.ReplaceAll("5V", "V5.ValueIf")  
		  dim step5 as string = step4.ReplaceAll("3.3V", "V3_3.ValueIf")
		  dim step6 as string = step5.ReplaceAll("0V", "V0.ValueIf")
		  GeneratedScript = ScriptPreamble + EndOfLine + _
		  "VCC = " + step6 
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RunScript()
		  
		  UsingScriptControl.Context = self
		  UsingScriptControl.Source = GeneratedScript
		  UsingScriptControl.Run
		End Sub
	#tag EndMethod


	#tag Note, Name = about
		
		This class is both the context object for running an RBScript and instantiates the RBScript and produces the result so it is a drop-in solution.z
	#tag EndNote


	#tag Property, Flags = &h0
		GeneratedScript As string
	#tag EndProperty

	#tag Property, Flags = &h0
		J1a As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		J1b As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		OriginalScript As string
	#tag EndProperty

	#tag Property, Flags = &h21
		Private UsingScriptControl As RbScript
	#tag EndProperty

	#tag Property, Flags = &h0
		VCC As double
	#tag EndProperty


	#tag Constant, Name = ScriptPreamble, Type = String, Dynamic = False, Default = \"Class Voltage\r  Sub Constructor(inVoltage as double)\r    VoltageValue \x3D inVoltage\r  End Sub\r\r  Function ValueIf(test as Boolean) as double\r    If test then\r      return VoltageValue\r    else\r      return 0.0\r    end if\r  End Function\r\r  Function operator_convert() as double\r    return VoltageValue\r  End Function\r\r  Private VoltageValue As double\rEnd Class\r\rdim V5 as Voltage \x3D new Voltage(5.0)\rdim V3_3 as Voltage \x3D  new Voltage(3.3)\rdim V0 as Voltage \x3D new Voltage(0.0)\r// end of preamble definining class and setting up variables", Scope = Private
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="GeneratedScript"
			Group="Behavior"
			Type="string"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="J1a"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="J1b"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OriginalScript"
			Group="Behavior"
			Type="string"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
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
			Name="VCC"
			Group="Behavior"
			Type="integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
