#tag Window
Begin Window SimpleKarelRunner Implements KarelWorldObserver,KarelStepApprover
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
      LockBottom      =   True
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
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
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
      Caption         =   "Load World:"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   403
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
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
   Begin CheckBox SayCheck
      AutoDeactivate  =   True
      Bold            =   ""
      Caption         =   "Say each change"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      State           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      Top             =   534
      Underline       =   ""
      Value           =   False
      Visible         =   True
      Width           =   171
   End
   Begin CheckBox StepCheck
      AutoDeactivate  =   True
      Bold            =   ""
      Caption         =   "Single step moves"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      State           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      Top             =   566
      Underline       =   ""
      Value           =   False
      Visible         =   True
      Width           =   143
   End
   Begin PushButton StepButton
      AutoDeactivate  =   True
      Bold            =   ""
      Cancel          =   ""
      Caption         =   "Step"
      Default         =   ""
      Enabled         =   False
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   175
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      Top             =   566
      Underline       =   ""
      Visible         =   True
      Width           =   80
   End
   Begin Slider SpeedSlider
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   16
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   78
      LineStep        =   250
      LiveScroll      =   ""
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Maximum         =   1500
      Minimum         =   0
      PageStep        =   250
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   507
      Value           =   1000
      Visible         =   True
      Width           =   298
   End
   Begin StaticText StaticText1
      AutoDeactivate  =   True
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   False
      Multiline       =   ""
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      Text            =   "Speed:"
      TextAlign       =   0
      TextColor       =   &h000000
      TextFont        =   "System"
      TextSize        =   0
      Top             =   502
      Underline       =   ""
      Visible         =   True
      Width           =   46
   End
   Begin Thread KarelThread
      Height          =   32
      Index           =   -2147483648
      Left            =   -18
      LockedInPosition=   False
      Priority        =   5
      Scope           =   0
      StackSize       =   0
      TabPanelIndex   =   0
      Top             =   114
      Width           =   32
   End
   Begin TabPanel ScriptsTab
      AutoDeactivate  =   True
      Bold            =   ""
      Enabled         =   True
      Height          =   651
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   512
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Panels          =   ""
      Scope           =   0
      SmallTabs       =   ""
      TabDefinition   =   "World\rScript"
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      Top             =   14
      Underline       =   ""
      Value           =   1
      Visible         =   True
      Width           =   430
      Begin EditField ScriptEntry
         AcceptTabs      =   True
         Alignment       =   0
         AutoDeactivate  =   True
         BackColor       =   16777215
         Bold            =   False
         Border          =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   606
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "ScriptsTab"
         Italic          =   False
         Left            =   520
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
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   False
         Text            =   ""
         TextColor       =   0
         TextFont        =   "System"
         TextSize        =   12
         Top             =   59
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   420
      End
      Begin EditField WorldEntry
         AcceptTabs      =   True
         Alignment       =   0
         AutoDeactivate  =   True
         BackColor       =   16777215
         Bold            =   False
         Border          =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   606
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "ScriptsTab"
         Italic          =   False
         Left            =   519
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
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   False
         Text            =   ""
         TextColor       =   0
         TextFont        =   "System"
         TextSize        =   12
         Top             =   51
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   420
      End
   End
   Begin StaticText StatusDisplay
      AutoDeactivate  =   True
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   20
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
      Multiline       =   ""
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      Text            =   ""
      TextAlign       =   0
      TextColor       =   &hFF0033
      TextFont        =   "System"
      TextSize        =   0
      Top             =   645
      Underline       =   ""
      Visible         =   True
      Width           =   473
   End
   Begin StaticText StepActionMsg
      AutoDeactivate  =   True
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   42
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
      Multiline       =   ""
      Scope           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      Text            =   "dynamic msg shows here"
      TextAlign       =   0
      TextColor       =   &h000000
      TextFont        =   "System"
      TextSize        =   0
      Top             =   589
      Underline       =   ""
      Visible         =   False
      Width           =   458
   End
   Begin StaticText StepAboutPrompt
      AutoDeactivate  =   True
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   267
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
      Multiline       =   ""
      Scope           =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      Text            =   "About to:"
      TextAlign       =   0
      TextColor       =   &h000000
      TextFont        =   "System"
      TextSize        =   0
      Top             =   566
      Underline       =   ""
      Visible         =   False
      Width           =   100
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  mWorld = new KarelWorld(10, 10)
		  mWorld.AddObserver self
		  mScripter = new KarelScripter( DestCanvas.Graphics, mWorld )
		  ScriptsTab.Value = 0  // kick the value so the Change event is triggered and the menu titles updated
		  SetupDynamicFolderMenus
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resized()
		  mScripter.WorldResized
		  RedrawWorld
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resizing()
		  mScripter.WorldResized
		  RedrawWorld
		End Sub
	#tag EndEvent

	#tag Event
		Sub EnableMenuItems()
		  if ScriptsTab.Value=0 then
		    FileSave.Enabled = mWorldDirty
		    FileSaveas.Enabled = WorldEntry.Text.LenB > 0 or mWorldDirty
		  else
		    FileSave.Enabled = mScriptDirty
		    FileSaveas.Enabled = ScriptEntry.Text.LenB > 0 or mScriptDirty
		  end if
		  KarelRun.Enabled = not mAmRunning
		End Sub
	#tag EndEvent

	#tag Event
		Function CancelClose(appQuitting as Boolean) As Boolean
		  if appQuitting then return false  // Quit has its own question
		  return not SaveIfDirty("quitting", true)  // CancelClose is kinda weird - a True means cancel!
		End Function
	#tag EndEvent

	#tag Event
		Sub Close()
		  if mAmRunning then
		    mAmRunning = false
		    KarelThread.Kill  // immediate kill so it doesn't try to update any controls, eg: if single-stepping, which are now gone
		  end if
		  Quit
		End Sub
	#tag EndEvent


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
			WorldEntry.Text = kSampleMap1
			ScriptsTab.Value = 0
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function SamplesKarel1() As Boolean Handles SamplesKarel1.Action
			ScriptEntry.Text = kSampleKarel1
			ScriptsTab.Value = 1
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function SamplesKarel2() As Boolean Handles SamplesKarel2.Action
			ScriptEntry.Text = kSampleKarel2
			ScriptsTab.Value = 1
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function SamplesMap2() As Boolean Handles SamplesMap2.Action
			WorldEntry.Text = kSampleMap2
			ScriptsTab.Value = 0
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function SamplesKarel3() As Boolean Handles SamplesKarel3.Action
			ScriptEntry.Text = kSampleKarel3
			ScriptsTab.Value = 1
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileOpen() As Boolean Handles FileOpen.Action
			return HandleFileOpen
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileSave() As Boolean Handles FileSave.Action
			if ScriptsTab.Value=0 then
			if mCurrentWorldFile is nil then
			call HandleSaveAs
			else
			SaveDoc(mCurrentWorldFile, WorldEntry.Text)
			mWorldDirty = false
			end if
			else
			if mCurrentScriptFile is nil then
			call HandleSaveAs
			else
			Savedoc(mCurrentScriptFile, ScriptEntry.Text)
			mScriptDirty = false
			end if
			end if
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileSaveas() As Boolean Handles FileSaveas.Action
			call HandleSaveAs
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileQuit() As Boolean Handles FileQuit.Action
			if SaveIfDirty("quitting", true) then
			Quit
			end if
			// otherwise swallows the event
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileNew() As Boolean Handles FileNew.Action
			if not SaveIfDirty("creating a new one") then return True  // cancelled a dialog
			
			if ScriptsTab.Value=0 then
			mCurrentWorldFile = nil
			WorldEntry.Text = ""
			mWorldDirty = false
			else
			mCurrentScriptFile = nil
			ScriptEntry.Text = ""
			mScriptDirty = false
			end if
			Return True
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub RunKarel()
		  if ScriptEntry.text.len=0 then
		    MsgBox "You must enter a Karel Program to Run"
		    return
		  end if
		  
		  RedrawWorld
		  
		  
		  dim CurrentLogger as KarelLogger
		  if SayCheck.Value then
		    CurrentLogger = new KarelLogSpeech
		    mScripter.SetLogger CurrentLogger
		  else
		    mScripter.SetLogger nil
		  end if
		  
		  // do after other loggers established above
		  if StepCheck.Value then
		    dim stepper as new KarelStepLogger(self)
		    if CurrentLogger is nil then
		      CurrentLogger =  stepper
		    else
		      if CurrentLogger isa KarelMultiLogger then
		        KarelMultiLogger(CurrentLogger).Loggers.Insert(0, stepper) // put stepper first so no actions until step
		      else
		        CurrentLogger = new KarelMultiLogger( stepper, CurrentLogger ) // put stepper first so no actions until step
		      end if
		    end if
		    mScripter.SetLogger CurrentLogger
		  end if
		  mStepButtonPressed = false  // flag will be set by user pressing button, see StepNeeded for wait loop
		  
		  mScripter.UseGraphics DestCanvas.Graphics  // at whatever size it currently exists
		  script.Context = mScripter
		  Script.Source = KarelScripter.PrepareKarelScript(ScriptEntry.text)
		  
		  
		  ClearErrorDisplay
		  SetMovePauseFromSlider
		  try
		    KarelThread.Run
		  catch e as KarelException
		    StatusDisplay.Text =  e.ErrorMessage
		  end
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub WorldUpdated(whichWorld as KarelWorld)
		  // Part of the KarelWorldObserver interface.
		  if not mLoadingWorld then
		    RedrawWorld
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadMap(mapScript as string)
		  ClearErrorDisplay
		  mScripter.UseGraphics DestCanvas.Graphics  // at whatever size it currently exists
		  script.Context = mWorld
		  Script.Source = mWorld.CleanupWorld(mapScript)
		  mWorld.Reset
		  
		  // probably never have slow looping world scripts, but just in case, disable running another script
		  RunButton.Enabled=false
		  LoadMapButton.Enabled = false
		  
		  mLoadingWorld = true  // so don't trigger endless updates whilst adding things
		  script.Run  // to redefine the world
		  mLoadingWorld = false
		  
		  RunButton.Enabled=true
		  LoadMapButton.Enabled = true
		  
		  mScripter.UseWorld mWorld  // needs to get sizes from here
		  RedrawWorld
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RedrawWorld()
		  // get the world to draw everything
		  mWorld.DrawInContext mScripter
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StepNeeded(msg as String)
		  // Part of the KarelStepApprover interface.
		  
		  StepButton.Enabled= true
		  StepAboutPrompt.Visible = true
		  StepActionMsg.text = msg
		  StepActionMsg.Visible = true
		  // spins waiting for that button to be enabled, this will be called from a separate non-GUI thread running Karel
		  Do
		    app.YieldToNextThread
		  loop until mStepButtonPressed or StepCheck.value=false
		  StepButton.Enabled = false
		  mStepButtonPressed = false
		  StepAboutPrompt.Visible = false
		  StepActionMsg.Visible = false
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ErrorShutdown(whichWorld as KarelWorld, errorMsg as string)
		  StatusDisplay.Text = errorMsg
		  beep
		  mAmRunning = false
		  RunButton.Caption = mSaveRunCaption
		  LoadMapButton.Enabled = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SetMovePauseFromSlider()
		  // slider ascends from left to right but we want delay to decrease from left to right, to give an ascending SPEED control
		  // eg: a range of 0..2000 is 0..2 seconds with default of 1500 = 0.5 second initial pause
		  dim flippedMilliSeconds as integer = SpeedSlider.Maximum - SpeedSlider.Value
		  mScripter.MovePause = flippedMilliSeconds / 1000.0  // milliseconds to seconds
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ClearErrorDisplay()
		  StatusDisplay.Text = ""
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StopKarel()
		  mWorld.ErrorShutdown "Stop was pressed"
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function OpenDoc(f as FolderItem) As String
		  dim t as TextInputStream
		  t = f.OpenAsTextFile
		  dim cleanedString as string = t.ReadAll
		  return cleanedString.ReplaceAll( chr(9), SpacesReplacingTab )
		  // implicitly closes as t goes out of scope
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SaveDoc(f as FolderItem, text as string)
		  Dim t as TextOutputStream
		  t = f.CreateTextFile
		  t.Write text
		  t.close
		  t = nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SaveIfDirty(partReason as String, checkBoth as Boolean = false) As Boolean
		  // Note leading ampersands to make buttons alt-keyable on Windows and cmd-S and cmd-D on Mac
		  
		  dim checkScripts as Boolean = false
		  dim checkWorlds as Boolean = false
		  if checkBoth then
		    checkScripts = true
		    checkWorlds = true
		  else
		    if ScriptsTab.Value=0 then
		      checkWorlds = true
		    else
		      checkScripts = true
		    end if
		  end if
		  
		  if checkWorlds then
		    if mWorldDirty and WorldEntry.Text.LenB > 0 then
		      dim d as new MessageDialog
		      select case d.ShowModalWith(self, "Do you want to save changes to your World before " + partReason + "?", "&Save", "&Don't Save", "Cancel")
		      case d.ActionButton
		        if  mCurrentWorldFile is nil then
		          if not HandleSaveAs then return false  // fall through for default true return or cancelling by scripts if checkScripts
		        end if
		        SaveDoc(mCurrentWorldFile, WorldEntry.Text)
		        
		      case  d.CancelButton
		        return false // cancelled
		      end Select
		    end if
		  end if
		  
		  if checkScripts then
		    if mScriptDirty and ScriptEntry.Text.LenB > 0 then
		      dim d as new MessageDialog
		      select case d.ShowModalWith(self, "Do you want to save changes to your Script before " + partReason + "?", "&Save", "&Don't Save", "Cancel")
		      case d.ActionButton
		        if  mCurrentScriptFile is nil then
		          return HandleSaveAs
		        end if
		        Savedoc(mCurrentScriptFile, ScriptEntry.Text)
		      case  d.CancelButton
		        return false // cancelled
		      end Select
		    end if
		  end if
		  
		  return true  // either didn't need saving or saved OK including allowing for a SaveAs for a new document
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function HandleSaveAs() As Boolean
		  if ScriptsTab.Value=0 then
		    dim f as FolderItem = GetSaveFolderItem(KarelFileTypes.Text, "Untitled World.txt")
		    if f is nil then return false  // cancelled
		    
		    SaveDoc(f, WorldEntry.Text)
		    mCurrentWorldFile = f
		    mWorldDirty = false
		    
		  else
		    dim f as FolderItem = GetSaveFolderItem(KarelFileTypes.Text, "Untitled Script.txt")
		    if f is nil then return false  // cancelled
		    
		    Savedoc(f, ScriptEntry.Text)
		    mCurrentScriptFile = f
		    mScriptDirty = false
		  end if
		  return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SetupLoggers()
		  // moved here because user can change active loggers just by checking or unchecking as we run
		  dim CurrentLogger as KarelLogger
		  if SayCheck.Value then
		    CurrentLogger = new KarelLogSpeech
		    mScripter.SetLogger CurrentLogger
		  else
		    mScripter.SetLogger nil
		  end if
		  
		  // do after other loggers established above
		  if StepCheck.Value then
		    dim stepper as new KarelStepLogger(self)
		    if CurrentLogger is nil then
		      CurrentLogger =  stepper
		    else
		      if CurrentLogger isa KarelMultiLogger then
		        KarelMultiLogger(CurrentLogger).Loggers.Insert(0, stepper) // put stepper first so no actions until step
		      else
		        CurrentLogger = new KarelMultiLogger( stepper, CurrentLogger ) // put stepper first so no actions until step
		      end if
		    end if
		    mScripter.SetLogger CurrentLogger
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FindSpecialFolder(folderName as string) As FolderItem
		  // runs through list of standard folders looking for children.
		  
		  static foldersToCheck() as FolderItem = Array( _
		  app.ExecutableFile.Parent, _
		  SpecialFolder.Documents, _
		  SpecialFolder.SharedDocuments, _
		  SpecialFolder.UserHome, _
		  SpecialFolder.ApplicationData)
		  
		  for each fld as FolderItem in foldersToCheck
		    if fld<>nil then
		      // on different platforms, the special folders above may return nil
		      dim maybeF as FolderItem = fld.Child(folderName)
		      if maybeF <> nil and maybeF.Exists then
		        return maybeF
		      end if
		    end if
		  next
		  
		  #if TargetWin32
		    // loop again looking for shortcuts, just returning one of them works if they are shortcut to a directory
		    dim linkName as string = folderName+".lnk"
		    for each fld as FolderItem in foldersToCheck
		      if fld<>nil then
		        // on different platforms, the special folders above may return nil
		        dim maybeF as FolderItem = fld.Child(linkName)
		        if maybeF <> nil and maybeF.Exists then
		          return maybeF
		        end if
		      end if
		    next
		  #endif
		  return nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SetupDynamicFolderMenus()
		  mWorldsFolder = FindSpecialFolder("KarelWorlds")
		  mScriptsFolder = FindSpecialFolder("KarelScripts")
		  
		  if mWorldsFolder<>nil then
		    FolderItemMenuItem.MakeMenuForFlatFolder App.MenuBar, "Worlds", 5, mWorldsFolder, AddressOf handleWorldsMenu, AddressOf FileIsOKAsScript
		  end if
		  if mScriptsFolder<>nil then
		    FolderItemMenuItem.MakeMenuForFlatFolder App.MenuBar, "Scripts", 6, mScriptsFolder, AddressOf handleScriptsMenu, AddressOf FileIsOKAsScript
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function handleWorldsMenu(handleItem as DynamicDelegatingMenuItem) As Boolean
		  ScriptsTab.Value=0  // force switch to Worlds
		  dim fileToOpen as FolderItem = handleItem.Tag
		  call HandleFileOpen(fileToOpen)
		  return true
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function handleScriptsMenu(handleItem as DynamicDelegatingMenuItem) As Boolean
		  ScriptsTab.Value=1  // force switch to script
		  dim fileToOpen as FolderItem = handleItem.Tag
		  call HandleFileOpen(fileToOpen)
		  return true
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function FileIsOKAsScript(fi as FolderItem) As String
		  // implements delegate FolderItemMenuItem.FolderItemToMenuTitle
		  if fi.Directory then return ""
		  
		  dim candidateName as string = fi.Name
		  if candidateName.left(1)="." then return ""
		  
		  if candidateName.right(4)=".txt" then
		    return candidateName.left( candidateName.len-4 )
		  end if
		  
		  if candidateName.right(5)=".text" then
		    return candidateName.left( candidateName.len-5 )
		  end if
		  
		  return ""  // default is fail to add
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function HandleFileOpen(f as FolderItem = nil) As Boolean
		  if not SaveIfDirty("opening a different one") then return True  // cancelled a dialog
		  
		  // can be called with known FolderItem
		  if f is nil then
		    f = GetOpenFolderItem(KarelFileTypes.Text)
		  end if
		  if f is nil then return True
		  
		  if ScriptsTab.Value=0 then
		    mCurrentWorldFile = f
		    WorldEntry.Text = OpenDoc(f)
		    mWorldDirty = false
		  else
		    mCurrentScriptFile = f
		    ScriptEntry.Text = OpenDoc(f)
		    mScriptDirty = false
		  end if
		  Return True
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		mScripter As KarelScripter
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mWorld As KarelWorld
	#tag EndProperty

	#tag Property, Flags = &h0
		mAmRunning As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mSaveRunCaption As string
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mCurrentWorldFile As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mCurrentScriptFile As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mWorldDirty As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mScriptDirty As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mLoadingWorld As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mStepButtonPressed As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mWorldsFolder As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mScriptsFolder As FolderItem
	#tag EndProperty


	#tag Constant, Name = kImageFilters, Type = String, Dynamic = False, Default = \"image/jpeg;image/png;/image/gif", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kSampleMap1, Type = String, Dynamic = False, Default = \"World 5 5\rBeepers 3 3 1\rRobot 4 3 1 0\rWall 2 2 1\rWall 3 2 1\rWall 1 1 4\rWall 2 1 4\rWall 2 2 4\rWall 3 1 4\rWall 3 2 4\rWall 3 3 4\rWall 4 1 4\rWall 4 2 4\rWall 4 3 4\rWall 4 4 4", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kSampleKarel1, Type = String, Dynamic = False, Default = \"TurnOn\rTurnLeft\rTurnLeft\rMove\rPickBeeper\rTurnLeft\rTurnLeft\rMove\rMove\rTurnLeft\rMove\rTurnLeft\rMove\rPutBeeper\rTurnLeft\rTurnLeft\rMove", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kSampleKarel2, Type = String, Dynamic = False, Default = \"TurnOn\rdim i as integer\rfor i \x3D 1 to 3\r  TurnLeft\r  Move\rNext", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kSampleMap2, Type = String, Dynamic = False, Default = \"World 5 5\rRobot 3 3 1 0\rWall 3 3 4\rwall 3 3 1\rwall 3 4 4\rwall 2 3 1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kSampleKarel3, Type = String, Dynamic = False, Default = \"TurnOn\rTurnLeft\rif frontIsBlocked then\r  say \"blocked\"\rend if", Scope = Public
	#tag EndConstant

	#tag Constant, Name = SpacesReplacingTab, Type = String, Dynamic = False, Default = \"    ", Scope = Public
	#tag EndConstant


#tag EndWindowCode

#tag Events RunButton
	#tag Event
		Sub Action()
		  if mAmRunning then
		    StopKarel
		  else
		    RunKarel
		  end if
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
#tag Events LoadMapButton
	#tag Event
		Sub Action()
		  LoadMap WorldEntry.Text
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SayCheck
	#tag Event
		Sub Action()
		  if mAmRunning then
		    SetupLoggers
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events StepCheck
	#tag Event
		Sub Action()
		  if mAmRunning then
		    SetupLoggers
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events StepButton
	#tag Event
		Sub Action()
		  mStepButtonPressed = true
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SpeedSlider
	#tag Event
		Sub ValueChanged()
		  SetMovePauseFromSlider
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events KarelThread
	#tag Event
		Sub Run()
		  LoadMapButton.Enabled = false
		  StatusDisplay.Text = ""
		  mSaveRunCaption = RunButton.Caption
		  RunButton.Caption = "Stop"
		  mAmRunning = true
		  try
		    mWorld.RunBy me
		    script.Run
		  catch e as KarelException
		    StatusDisplay.Text = e.ErrorMessage
		  catch ignored as ThreadEndException
		    // could later do something here to catch these but should be due to our killing ourselves
		  catch e2 as RuntimeException
		    StatusDisplay.Text = e2.Message
		  end
		  mAmRunning = false
		  LoadMapButton.Enabled = true
		  RunButton.Caption = mSaveRunCaption
		  KarelRun.Enabled = true  // enable forced here because seems to be lag in EnableMenuItems if just using cmd-key
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ScriptsTab
	#tag Event
		Sub Change()
		  if me.value=0 then
		    WorldEntry.SetFocus
		    FileOpen.Text = "Open World..."
		    FileSave.Text = "Save World"
		    FileSaveAs.Text = "Save World as..."
		  else
		    ScriptEntry.SetFocus
		    FileOpen.Text = "Open Script..."
		    FileSave.Text = "Save Script"
		    FileSaveAs.Text = "Save Script as..."
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ScriptEntry
	#tag Event
		Sub TextChange()
		  mScriptDirty = true
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if Key=chr(9) then
		    me.SelText = SpacesReplacingTab
		    return true
		  end if
		  return false
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events WorldEntry
	#tag Event
		Sub TextChange()
		  mWorldDirty = true
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if Key=chr(9) then
		    me.SelText = SpacesReplacingTab
		    return true
		  end if
		  return false
		End Function
	#tag EndEvent
#tag EndEvents
