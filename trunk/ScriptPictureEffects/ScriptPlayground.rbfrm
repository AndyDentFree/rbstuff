#tag Window
Begin Window ScriptPlayground
   BackColor       =   16777215
   Backdrop        =   0
   BalloonHelp     =   ""
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   768
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
   Title           =   "Untitled"
   Visible         =   True
   Width           =   853
   Begin ImageWell SourceWell
      AutoDeactivate  =   True
      BalloonHelp     =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Height          =   400
      HelpTag         =   ""
      Image           =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   14
      Visible         =   True
      Width           =   400
   End
   Begin Canvas DestCanvas
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      BalloonHelp     =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Height          =   300
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   432
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   14
      UseFocusRing    =   True
      Visible         =   True
      Width           =   400
   End
   Begin EditField ScriptEntry
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      BackColor       =   16777215
      BalloonHelp     =   ""
      Bold            =   False
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
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
      MultiLine       =   True
      Password        =   False
      ReadOnly        =   False
      ScrollBar       =   True
      ScrollBarHorizontal=   False
      ScrollBarVertical=   True
      Styled          =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "choose scripts from the left or type them in\r\rTo use things like Blur and Brightness you must have a source image. This demo program may crash if you try some things without having first opened an image"
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
      BalloonHelp     =   ""
      Bold            =   False
      Cancel          =   False
      Caption         =   "Apply Script"
      Default         =   False
      DisabledBalloonHelp=   ""
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
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12
      Top             =   427
      Underline       =   False
      Visible         =   True
      Width           =   97
   End
   Begin RbScript Script
      EncodingFont    =   ""
      Index           =   -2147483648
      Left            =   27
      LockedInPosition=   False
      Source          =   ""
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   417
   End
   Begin PopupMenu ScriptsPopup
      AutoDeactivate  =   True
      BalloonHelp     =   ""
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Orange Square\rDarken Bit\rBlur\rBrighten\rDraw Stuff\rRandom Retint\rMeasles\rCascadingEffects"
      Italic          =   False
      Left            =   20
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12
      Top             =   469
      Underline       =   False
      Visible         =   True
      Width           =   91
   End
   Begin PushButton InsertButton
      AutoDeactivate  =   True
      BalloonHelp     =   ""
      Bold            =   False
      Cancel          =   False
      Caption         =   "Insert Script"
      Default         =   False
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12
      Top             =   509
      Underline       =   False
      Visible         =   True
      Width           =   91
   End
   Begin CheckBox ScaleCheck
      AutoDeactivate  =   True
      BalloonHelp     =   ""
      Bold            =   False
      Caption         =   "Scale images"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   123
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      State           =   1
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12
      Top             =   427
      Underline       =   False
      Value           =   True
      Visible         =   True
      Width           =   99
   End
   Begin CheckBox ImagesKeepProportioncheck
      AutoDeactivate  =   True
      BalloonHelp     =   ""
      Bold            =   False
      Caption         =   "Proportionally"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   234
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      State           =   1
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12
      Top             =   427
      Underline       =   False
      Value           =   True
      Visible         =   True
      Width           =   120
   End
   Begin StaticText StaticText1
      AutoDeactivate  =   True
      BalloonHelp     =   ""
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   432
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      MultiLine       =   False
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "use non-square dest to pickup bugs "
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   326
      Underline       =   False
      Visible         =   True
      Width           =   429
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  mPEScripter = new PictureEffectsScripter
		  DestCanvas.Backdrop = NewPicture(DestCanvas.Width, DestCanvas.Height, 32)
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function TestApplyScript() As Boolean Handles TestApplyScript.Action
			ApplyScript
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileOpenImage() As Boolean Handles FileOpenImage.Action
			OpenImage
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function EditSelectAll() As Boolean Handles EditSelectAll.Action
			' quick hack because only one edit field
			ScriptEntry.SelStart = 0
			ScriptEntry.SelLength = ScriptEntry.Text.Len
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function TestInsertScript() As Boolean Handles TestInsertScript.Action
			InsertScript
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub ApplyScript()
		  if ScriptEntry.text.len=0 then
		    MsgBox "You must enter some RBScript to apply"
		    return
		  end if
		  mPEScripter.UseImages SourceWell.Image, DestCanvas.Backdrop
		  script.Context = mPEScripter
		  Script.Source = ScriptEntry.text
		  script.Run
		  Refresh
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Action() As Boolean
		  ' quick hack of select all in the only text field
		  ScriptEntry.selStart = 0
		  ScriptEntry.SelLength = ScriptEntry.text.Len
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InsertScript()
		  ' if you want a true Insert, use .SelText below instead of .Text
		  select case ScriptsPopup.ListIndex
		  case 0
		    ScriptEntry.Text = kOrangeFillScript
		    
		  case 1
		    ScriptEntry.Text = kDarkenBitScript
		    
		  case 2
		    ScriptEntry.Text = kBlurScript
		    
		  case 3
		    ScriptEntry.Text = kBrightenScript
		    
		  case 4
		    ScriptEntry.Text = kDrawStuffScript
		    
		  case 5
		    ScriptEntry.Text = kRandomRetintScript
		    
		  case 6
		    ScriptEntry.Text = kMeaslesScript
		    
		  case 7
		    ScriptEntry.Text = kCascadeEffectsScript
		    
		    
		  end select
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub OpenImage()
		  dim dlg as openDialog
		  dim f as folderitem
		  dim p,scaleP, clipP as Picture
		  dim scalePWidth, scalePHeight as integer
		  dim heightScaleRatio, widthScaleRatio as double
		  dlg = new OpenDialog
		  dlg.Filter = kImageFilters
		  //The OpenDialog class supports custom prompts…
		  dlg.PromptText = "Choose an Image"
		  
		  //…and custom title's
		  dlg.Title = "Open Image"
		  
		  f = dlg.ShowModalWithin(self)
		  
		  if f <> nil then
		    p = f.OpenAsPicture
		    if p=nil then
		      MsgBox "Sorry, "+f.Name+" is not an image file"
		    else
		      if ScaleCheck.value then
		        scaleP = NewPicture(SourceWell.Width, SourceWell.Height, 32)
		        if ImagesKeepProportioncheck.Value then
		          ' work out some scaled input rect sizes to make it warp
		          ' scale both dimensions by the one that needs to change most
		          widthScaleRatio = scaleP.Width/p.Width 
		          heightScaleRatio = scaleP.Height/p.Height 
		          if heightScaleRatio < widthScaleRatio then
		            scalePHeight = p.Height * heightScaleRatio
		            scalePWidth = p.Width * heightScaleRatio
		          else
		            scalePHeight = p.Width * widthScaleRatio
		            scalePWidth = p.Height * widthScaleRatio
		          end if
		          ' copy entire picture to scaled rectangle
		          scaleP.Graphics.DrawPicture p, _
		          0,0,scalePWidth, scalePHeight, _
		          0, 0, p.Width, p.Height
		          
		        else
		          ' let RB do it, breaking proportions
		          scaleP.Graphics.DrawPicture p, _
		          0,0,scaleP.Width, scaleP.Height, _
		          0, 0, p.Width, p.Height
		        end if ' keeping proportion
		        SourceWell.Image = scaleP
		      else
		        if p.width>SourceWell.width or p.Height>SourceWell.Height then
		          ' draw top left chunk of incoming picture
		          clipP = NewPicture(SourceWell.Width, SourceWell.Height, 32)
		          clipP.Graphics.DrawPicture p, _
		          0,0,clipP.Width, clipP.Height, _
		          0, 0, clipP.Width, clipP.Height
		          SourceWell.Image = clipP
		        else
		          SourceWell.Image = p 
		        end if
		      end if
		      '  
		      'SourceWell.Image.Graphics.DrawPicture p,0,0
		    end if
		  end if
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		mPEScripter As PictureEffectsScripter
	#tag EndProperty


	#tag Constant, Name = kImageFilters, Type = String, Dynamic = False, Default = \"image/tiff;image/x-bmp;image/x-photoshop;image/jpeg;image/png;image/gif", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDarkenBitScript, Type = String, Dynamic = False, Default = \"dim i\x2Cj as integer\rdim h\x2C s\x2C v as double\rdim c as color\rFillDest &cFF2020\rfor i\x3D50 downto 0\rfor j\x3D50 downto 0\rgetpixel i\x2Cj\x2C h\x2C s\x2C v\rv \x3D v*0.7\rc \x3D HSV(h\x2C s\x2C v)\r\' crash if uncomment this line\r\' v \x3D c.Value\rsetpixel i\x2C j\x2C c\rnext j\rnext i\r", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kOrangeFillScript, Type = String, Dynamic = False, Default = \"FillDest &cFF2020", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kBlurScript, Type = String, Dynamic = False, Default = \"Blur", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kBrightenScript, Type = String, Dynamic = False, Default = \"Brightness 60", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDrawStuffScript, Type = String, Dynamic = False, Default = \"ForeColor \x3D &CFF1032\rclearRect 0\x2C 0\x2C 200\x2C200\rTextSize \x3D 24\rTextFont \x3D \"Arial\"\rItalic\x3Dtrue\rdrawstring \"Hi Joe\"\x2C10\x2C20\x2C 40\rdrawline 120\x2C 40\x2C  200\x2C 200", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kRandomRetintScript, Type = String, Dynamic = False, Default = \"\' randomly change hue of dots\rdim row\x2C col as integer\rdim h\x2C s\x2C v as double\rdim c as color\rcopyImage\rfor row\x3Dheight-1 downto 0\r  for col\x3Dwidth-1 downto 0\r    getpixel col\x2C row\x2C h\x2C s\x2C v\r\r    h \x3D h * random(10\x2C80)/100.0   \r\'  the values in the brackets can be 0 - 100\r\' a range like 20-40 gives reddish hues\x2C 40-80 greenish\r\r\' leave v for Value as is so don\'t darken the picture\r\' if you change s for Saturation will tone down colors towards grey\r    c \x3D HSV(h\x2C s\x2C v)\r    setpixel col\x2C row\x2C c\r  next col\rnext row\r", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kMeaslesScript, Type = String, Dynamic = False, Default = \"\' randomly draw red circles\rdim countMeasles\x2C centreX\x2C centreY\x2C measleSize as integer\rcopyImage\rForeColor \x3D &cFF0000 \' pure red\rfor countMeasles \x3D 1 to 40\r   measleSize \x3D Random(4\x2C 12)\r   centreX \x3D random (5\x2C Width - 5)\r   centreY \x3D Random(5\x2C Height - 5)\r   FillCircle centreX\x2C centreY\x2C measleSize\rnext", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kCascadeEffectsScript, Type = String, Dynamic = False, Default = \"CopyImage\rCascadeEffects \'  usually precede with a CopyImage or other effect that copies\rFlipHorizontal\rFlipVertical\rSurfaceWave 2.5", Scope = Public
	#tag EndConstant


#tag EndWindowCode

#tag Events SourceWell
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  
		  return true
		  
		  ' following allows us to drag image out
		  Dim d as DragItem
		  d=NewDragItem(Me.left,Me.top,Me.width,Me.height)
		  d.picture=Me.Image
		  d.Drag //Allow the drag
		End Function
	#tag EndEvent
	#tag Event
		Sub DropObject(obj As DragItem, action As Integer)
		  
		  If Obj.PictureAvailable then 
		    Me.Image=Obj.Picture
		  elseif Obj.FolderItemAvailable then
		    Me.Image=Obj.FolderItem.OpenAsPicture
		  End if
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.AcceptPictureDrop
		  Me.AcceptFileDrop(kImageFilters)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ApplyButton
	#tag Event
		Sub Action()
		  ApplyScript
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Script
	#tag Event
		Sub Print(msg As String)
		  MsgBox msg
		End Sub
	#tag EndEvent
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
#tag Events InsertButton
	#tag Event
		Sub Action()
		  InsertScript
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ScaleCheck
	#tag Event
		Sub Action()
		  ImagesKeepProportioncheck.Enabled = me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
