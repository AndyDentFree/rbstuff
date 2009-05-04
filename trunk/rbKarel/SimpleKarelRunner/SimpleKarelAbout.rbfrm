#tag Window
Begin Window SimpleKarelAbout
   BackColor       =   &hFFFFFF
   Backdrop        =   ""
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   228
   ImplicitInstance=   True
   LiveResize      =   False
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   -1124188337
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   False
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   False
   Title           =   "About rbKarel"
   Visible         =   True
   Width           =   442
   Begin PushButton CloseWindowButton
      AutoDeactivate  =   True
      Bold            =   ""
      Cancel          =   ""
      Caption         =   "Close"
      Default         =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   342
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      Top             =   188
      Underline       =   ""
      Visible         =   True
      Width           =   80
   End
   Begin StaticTextWithURL LaunchWikiHelpText
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
      Left            =   35
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
      Multiline       =   True
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      Text            =   "details at the Google Code Project"
      TextAlign       =   0
      TextColor       =   &h000099
      TextFont        =   "System"
      TextSize        =   0
      Top             =   61
      Underline       =   True
      Visible         =   True
      Width           =   237
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
      Left            =   35
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
      Multiline       =   ""
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      Text            =   "Karel the Robot implemented using RBScript in REALbasic™"
      TextAlign       =   0
      TextColor       =   &h000000
      TextFont        =   "System"
      TextSize        =   0
      Top             =   29
      Underline       =   ""
      Visible         =   True
      Width           =   442
   End
   Begin StaticTextWithURL AussieDesignedSoftwareLink
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
      Left            =   35
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
      Multiline       =   True
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      Text            =   "Aussie Designed Software Pty Ltd"
      TextAlign       =   0
      TextColor       =   &h000099
      TextFont        =   "System"
      TextSize        =   0
      Top             =   156
      Underline       =   True
      Visible         =   True
      Width           =   237
   End
   Begin StaticText StaticText2
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
      Left            =   35
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
      Multiline       =   ""
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      Text            =   "Initiated and Guided by Jeff Ayling"
      TextAlign       =   0
      TextColor       =   &h000000
      TextFont        =   "System"
      TextSize        =   0
      Top             =   92
      Underline       =   ""
      Visible         =   True
      Width           =   257
   End
   Begin StaticText StaticText3
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
      Left            =   35
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
      Multiline       =   ""
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      Text            =   "Developed by Andy Dent of:"
      TextAlign       =   0
      TextColor       =   &h000000
      TextFont        =   "System"
      TextSize        =   0
      Top             =   124
      Underline       =   ""
      Visible         =   True
      Width           =   228
   End
End
#tag EndWindow

#tag WindowCode
#tag EndWindowCode

#tag Events CloseWindowButton
	#tag Event
		Sub Action()
		  Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LaunchWikiHelpText
	#tag Event
		Sub Open()
		  me.URL = "http://code.google.com/p/rbstuff/wiki/rbKarelOverview"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AussieDesignedSoftwareLink
	#tag Event
		Sub Open()
		  me.URL = "http://www.aussiedesignedsoftware.com"
		End Sub
	#tag EndEvent
#tag EndEvents
