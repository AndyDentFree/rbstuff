#tag Window
Begin Window SimpleKarelRunner Implements KarelWorldObserver
   BackColor       =   &hFFFFFF
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   680
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
   Title           =   "Karel's World"
   Visible         =   True
   Width           =   960
   Begin Canvas DestCanvas
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   480
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   11
      UseFocusRing    =   True
      Visible         =   True
      Width           =   480
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
      Height          =   649
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   512
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
      Text            =   ""
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   11
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   441
   End
   Begin PushButton RunButton
      AutoDeactivate  =   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Run:"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   403
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
      Top             =   503
      Underline       =   False
      Visible         =   True
      Width           =   97
   End
   Begin RbScript Script
      EncodingFont    =   ""
      Height          =   32
      Index           =   -2147483648
      Left            =   -18
      LockedInPosition=   False
      Scope           =   0
      Source          =   ""
      TabPanelIndex   =   0
      Top             =   59
      Width           =   32
   End
   Begin PushButton LoadMapButton
      AutoDeactivate  =   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Load Map:"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   403
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12
      Top             =   535
      Underline       =   False
      Visible         =   True
      Width           =   97
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  mWorld = new KarelWorld(10, 10)
		  mWorld.AddObserver self
		  mScripter = new KarelScripter( DestCanvas.Graphics, mWorld )
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resized()
		  RedrawWorld
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resizing()
		  RedrawWorld
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function EditSelectAll() As Boolean Handles EditSelectAll.Action
			' quick hack given just one edit field
			ScriptEntry.SelStart = 0
			ScriptEntry.SelLength = ScriptEntry.Text.Len
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function KarelLoadMap() As Boolean Handles KarelLoadMap.Action
			LoadMapButton.Push
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function KarelRun() As Boolean Handles KarelRun.Action
			RunButton.Push
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function SamplesMap1() As Boolean Handles SamplesMap1.Action
			ScriptEntry.Text = kSampleMap1
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function SamplesKarel1() As Boolean Handles SamplesKarel1.Action
			ScriptEntry.Text = kSampleKarel1
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function SamplesKarel2() As Boolean Handles SamplesKarel2.Action
			ScriptEntry.Text = kSampleKarel2
			Return True
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub ApplyScript()
		  if ScriptEntry.text.len=0 then
		    MsgBox "You must enter some RBScript to apply"
		    return
		  end if
		  
		  RedrawWorld
		  
		  mScripter.UseWorld mWorld  // force it to reload robot etc.
		  
		  mScripter.UseGraphics DestCanvas.Graphics  // at whatever size it currently exists
		  script.Context = mScripter
		  Script.Source = ScriptEntry.text
		  script.Run
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub WorldUpdated(whichWorld as KarelWorld)
		  // Part of the KarelWorldObserver interface.
		  RedrawWorld
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadMap(mapScript as string)
		  mScripter.UseGraphics DestCanvas.Graphics  // at whatever size it currently exists
		  script.Context = mWorld
		  Script.Source = mWorld.CleanupWorld(mapScript)
		  mWorld.Reset
		  script.Run  // to redefine the world
		  RedrawWorld
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RedrawWorld()
		  // get the world to draw everything
		  mWorld.DrawInContext mScripter
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		mScripter As KarelScripter
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mWorld As KarelWorld
	#tag EndProperty


	#tag Constant, Name = kImageFilters, Type = String, Dynamic = False, Default = \"image/jpeg;image/png;/image/gif", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kSampleMap1, Type = String, Dynamic = False, Default = \"World 5 5\rBeepers 3 3 1\rRobot 4 3 1 0\rWall 2 2 1\rWall 3 2 1\rWall 1 1 4\rWall 2 1 4\rWall 2 2 4\rWall 3 1 4\rWall 3 2 4\rWall 3 3 4\rWall 4 1 4\rWall 4 2 4\rWall 4 3 4\rWall 4 4 4", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kSampleKarel1, Type = String, Dynamic = False, Default = \"TurnOn\rMove\rMove", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kSampleKarel2, Type = String, Dynamic = False, Default = \"TurnOn\rdim i as integer\rfor i \x3D 1 to 3\r  TurnLeft\r  Move\rNext", Scope = Public
	#tag EndConstant


#tag EndWindowCode

#tag Events RunButton
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
#tag Events LoadMapButton
	#tag Event
		Sub Action()
		  LoadMap ScriptEntry.Text
		End Sub
	#tag EndEvent
#tag EndEvents
