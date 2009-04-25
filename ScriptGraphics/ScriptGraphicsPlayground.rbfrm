#tag Window
Begin Window ScriptGraphicsPlayground
   BackColor       =   16777215
   Backdrop        =   0
   BalloonHelp     =   ""
   CloseButton     =   True
   Composite       =   False
   Frame           =   9
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   768
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   -1124188337
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "ScriptGraphics"
   Visible         =   True
   Width           =   853
   Begin Canvas DestCanvas
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   400
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   35
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   11
      UseFocusRing    =   True
      Visible         =   True
      Width           =   783
   End
   Begin EditField ScriptEntry
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      BackColor       =   16777215
      Bold            =   False
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   281
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   123
      LimitText       =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Multiline       =   True
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "' demonstrates that Pixel reads from backdrop of Canvas\r' NOT from Graphics plane!\rdim i,j as integer\rdim h, s, v as double\rdim c as color\rFillDest &cFF2020\rfor i=50 downto 0\rfor j=50 downto 0\rgetpixel i,j, h, s, v\r\rv = v*0.7\rc = HSV(h, s, v)\r' crash if uncomment next line\r' v = c.Value\rsetpixel i, j, c\rnext j\rnext i\r"
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   455
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   600
   End
   Begin PushButton ApplyButton
      AutoDeactivate  =   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Apply Script"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   372
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12
      Top             =   423
      Underline       =   False
      Visible         =   True
      Width           =   97
   End
   Begin RbScript Script
      EncodingFont    =   ""
      Height          =   32
      Index           =   -2147483648
      Left            =   27
      LockedInPosition=   False
      Scope           =   0
      Source          =   ""
      TabPanelIndex   =   0
      Top             =   417
      Width           =   32
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  DestCanvas.Backdrop = New Picture( DestCanvas.Width,DestCanvas.Height, 32)
		  mScripter = new GraphicsScripter
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resizing()
		  ResizeDestCanvas
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resized()
		  ResizeDestCanvas
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function TestApplyScript() As Boolean Handles TestApplyScript.Action
			ApplyScript
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function EditSelectAll() As Boolean Handles EditSelectAll.Action
			' quick hack given just one edit field
			ScriptEntry.SelStart = 0
			ScriptEntry.SelLength = ScriptEntry.Text.Len
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub ApplyScript()
		  if ScriptEntry.text.len=0 then
		    MsgBox "You must enter some RBScript to apply"
		    return
		  end if
		  mScripter.UseImages nil, DestCanvas.Backdrop  // at whatever size it currently exists
		  script.Context = mScripter
		  Script.Source = ScriptEntry.text
		  script.Run
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Action() As Boolean
		  ' quick hack of select all in the only text field
		  ScriptEntry.selStart = 0
		  ScriptEntry.SelLength = ScriptEntry.text.Len
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ResizeDestCanvas()
		  dim newBack as New Picture( DestCanvas.Width,DestCanvas.Height, 32)
		  if not( DestCanvas.Backdrop is nil) then
		    newBack.Graphics.DrawPicture DestCanvas.Backdrop, 0, 0
		  end if
		  DestCanvas.Backdrop = newBack
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		mScripter As GraphicsScripter
	#tag EndProperty


	#tag Constant, Name = kImageFilters, Type = String, Dynamic = False, Default = \"image/jpeg;image/png;/image/gif", Scope = Public
	#tag EndConstant


#tag EndWindowCode

#tag Events ApplyButton
	#tag Event
		Sub Action()
		  ApplyScript
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Script
	#tag Event
		Sub RuntimeError(line As Integer, error As RuntimeException)
		  msgBox "Runtime error in line "+nthField(me.source,chr(13),line)+"."
		End Sub
	#tag EndEvent
	#tag Event
		Sub CompilerError(line As Integer, errorNumber As Integer, errorMsg As String)
		  msgBox "Compiler error in line "+str(line)+" """+nthField(me.source,chr(13),line)+""": "+chr(13)+errormsg
		End Sub
	#tag EndEvent
#tag EndEvents
