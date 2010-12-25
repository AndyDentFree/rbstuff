#tag Window
Begin Window ScriptDemoWindow
   BackColor       =   &hFFFFFF
   Backdrop        =   ""
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   5.39e+2
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   1528011407
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "Untitled"
   Visible         =   True
   Width           =   7.23e+2
   Begin EditField ExpressionEntry
      AcceptTabs      =   ""
      Alignment       =   0
      AutoDeactivate  =   True
      BackColor       =   &hFFFFFF
      Bold            =   ""
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   30
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   138
      LimitText       =   0
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Mask            =   ""
      Multiline       =   ""
      Password        =   ""
      ReadOnly        =   ""
      Scope           =   0
      ScrollbarHorizontal=   ""
      ScrollbarVertical=   True
      Styled          =   ""
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "(5V&J1A&!J1B) | (3.3V&!J1A&J1B) | (0V&!J1A&!J1B)"
      TextColor       =   &h000000
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   33
      Underline       =   ""
      UseFocusRing    =   True
      Visible         =   True
      Width           =   361
   End
   Begin StaticText StaticText1
      Active          =   ""
      AutoDeactivate  =   True
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   18
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   26
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Multiline       =   ""
      Scope           =   0
      Selectable      =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Expression"
      TextAlign       =   0
      TextColor       =   &h000000
      TextFont        =   "System"
      TextSize        =   0
      Top             =   33
      Transparent     =   False
      Underline       =   ""
      Visible         =   True
      Width           =   100
      Window          =   0
      _mWindow        =   0
   End
   Begin PushButton GenerateBtn
      AutoDeactivate  =   True
      Bold            =   ""
      ButtonStyle     =   0
      Cancel          =   ""
      Caption         =   "Generate Script"
      Default         =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   136
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   82
      Underline       =   ""
      Visible         =   True
      Width           =   137
   End
   Begin PushButton RunBtn
      AutoDeactivate  =   True
      Bold            =   ""
      ButtonStyle     =   0
      Cancel          =   ""
      Caption         =   "Run Script"
      Default         =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   362
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   82
      Underline       =   ""
      Visible         =   True
      Width           =   137
   End
   Begin CheckBox J1aCheck
      AutoDeactivate  =   True
      Bold            =   ""
      Caption         =   "J1a"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   524
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Scope           =   0
      State           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   34
      Underline       =   ""
      Value           =   False
      Visible         =   True
      Width           =   42
   End
   Begin CheckBox J1bCheck
      AutoDeactivate  =   True
      Bold            =   ""
      Caption         =   "J1b"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   578
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Scope           =   0
      State           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   34
      Underline       =   ""
      Value           =   False
      Visible         =   True
      Width           =   59
   End
   Begin StaticText ScriptDisplay
      Active          =   ""
      AutoDeactivate  =   True
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   354
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   138
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlign       =   0
      TextColor       =   &h000000
      TextFont        =   "System"
      TextSize        =   0
      Top             =   118
      Transparent     =   False
      Underline       =   ""
      Visible         =   True
      Width           =   499
      Window          =   0
      _mWindow        =   0
   End
   Begin StaticText StaticText3
      Active          =   ""
      AutoDeactivate  =   True
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   18
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   26
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Multiline       =   ""
      Scope           =   0
      Selectable      =   False
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Script:"
      TextAlign       =   0
      TextColor       =   &h000000
      TextFont        =   "System"
      TextSize        =   0
      Top             =   159
      Transparent     =   False
      Underline       =   ""
      Visible         =   True
      Width           =   100
      Window          =   0
      _mWindow        =   0
   End
   Begin StaticText VccDisplay
      Active          =   ""
      AutoDeactivate  =   True
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   18
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   537
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Multiline       =   ""
      Scope           =   0
      Selectable      =   False
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlign       =   0
      TextColor       =   &h000000
      TextFont        =   "System"
      TextSize        =   0
      Top             =   82
      Transparent     =   False
      Underline       =   ""
      Visible         =   True
      Width           =   100
      Window          =   0
      _mWindow        =   0
   End
   Begin RbScript Script
      EncodingFont    =   ""
      Height          =   32
      Index           =   -2147483648
      Left            =   2
      LockedInPosition=   False
      Scope           =   0
      Source          =   ""
      TabPanelIndex   =   0
      Top             =   79
      Width           =   32
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  CalcWith = new ScriptedVoltageCalculator(Script)
		End Sub
	#tag EndEvent


	#tag Note, Name = about
		
		Scenario: a circuit board that contains a small power supply. Very small power supply. 
		It has several possible output voltages, that are selectable with "shunts" (you have probably seen them on electronic boards - 
		a pair of vertical pins with a shunt or jumper that slips over them to make a connection). 
		
		In this example, suppose that there are to locations for shunts, J1a and J1b. 
		A shunt on J1a gives 5V output and one on J1b gives 3.3V output. 
		No shunt gives 0V. 
		A shunt on both is disallowed and would otherwise produce "fire".
		
		So, I have a picture of this board, and the locations of J1a and J1b are marked with clickable rectangles. 
		They are set up like radio buttons so, in the virtual representation, the fire option is not needed.
		
		Then , what I would LIKE to do is a mixed type expression like this ("Vcc" represents the output of the power supply):
		
		Vcc = (5V&J1A&!J1B) | (3.3V&!J1A&J1B) | (0V&!JA1&!J1B).
		
		In this expression, J1A and J1B represent the boolean states of the clicked areas on the picture of the board. 
		The goal is have a substitution expression for Vcc (where it appears in OTHER boards in the system) 
		depending on the states of JA1 and J1B.
	#tag EndNote


	#tag Property, Flags = &h21
		Private CalcWith As ScriptedVoltageCalculator
	#tag EndProperty


#tag EndWindowCode

#tag Events GenerateBtn
	#tag Event
		Sub Action()
		  CalcWith.OriginalScript = ExpressionEntry.Text
		  CalcWith.GenerateScript
		  ScriptDisplay.text = CalcWith.GeneratedScript
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RunBtn
	#tag Event
		Sub Action()
		  CalcWith.J1a = J1aCheck.Value
		  CalcWith.J1b = J1bCheck.Value
		  CalcWith.RunScript
		  VccDisplay.Text = Str(CalcWith.VCC)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Script
	#tag Event
		Sub RuntimeError(line As Integer, error As RuntimeException)
		  if error is nil then
		    msgBox "Runtime error in line " + str(line) + " "+nthField(me.source, EndOfLine, line+1)+"."
		  else
		    msgBox "Runtime error '" + error.Message + "' in line " + str(line) + " "+nthField(me.source, EndOfLine, line+1)+"."
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Sub CompilerError(line As Integer, errorNumber As Integer, errorMsg As String)
		  msgBox "Compiler error in line "+str(line)+" """+nthField(me.source, chr(13), line+1)+""": "+chr(13)+errormsg
		  
		End Sub
	#tag EndEvent
#tag EndEvents
