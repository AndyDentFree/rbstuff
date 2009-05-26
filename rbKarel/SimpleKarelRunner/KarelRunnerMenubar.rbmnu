#tag Menu
Begin Menu KarelRunnerMenubar
   Begin MenuItem UntitledMenu2
      SpecialMenu = 1
      Text = ""
      Index = -2147483648
      AutoEnable = True
   End
   Begin MenuItem FileMenu
      SpecialMenu = 0
      Text = "&File"
      Index = -2147483648
      AutoEnable = True
      Begin MenuItem FileNew
         SpecialMenu = 0
         Text = "New"
         Index = -2147483648
         ShortcutKey = "N"
         Shortcut = "Cmd+N"
         MenuModifier = True
         AutoEnable = True
      End
      Begin MenuItem FileOpen
         SpecialMenu = 0
         Text = "Open.."
         Index = -2147483648
         ShortcutKey = "O"
         Shortcut = "Cmd+O"
         MenuModifier = True
         AutoEnable = True
      End
      Begin MenuItem FileSave
         SpecialMenu = 0
         Text = "Save"
         Index = -2147483648
         ShortcutKey = "S"
         Shortcut = "Cmd+S"
         MenuModifier = True
         AutoEnable = True
      End
      Begin MenuItem FileSaveas
         SpecialMenu = 0
         Text = "Save as..."
         Index = -2147483648
         ShortcutKey = "S"
         Shortcut = "Cmd+Shift+S"
         MenuModifier = True
         AltMenuModifier = True
         AutoEnable = True
      End
      Begin MenuItem UntitledMenu1
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
      End
      Begin QuitMenuItem FileQuit
         SpecialMenu = 0
         Text = "Quit"
         Index = -2147483648
         ShortcutKey = "Q"
         Shortcut = "Cmd+Q"
         MenuModifier = True
         AutoEnable = True
      End
      Begin MenuItem 
         SpecialMenu = 2
         Text = ""
         Index = -2147483648
         AutoEnable = True
      End
   End
   Begin MenuItem EditMenu
      SpecialMenu = 0
      Text = "&Edit"
      Index = -2147483648
      AutoEnable = True
      Begin MenuItem EditUndo
         SpecialMenu = 0
         Text = "&Undo"
         Index = -2147483648
         ShortcutKey = "Z"
         Shortcut = "Cmd+Z"
         MenuModifier = True
         AutoEnable = True
      End
      Begin MenuItem UntitledMenu0
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
      End
      Begin MenuItem EditSelectAll
         SpecialMenu = 0
         Text = "Select All"
         Index = -2147483648
         ShortcutKey = "A"
         Shortcut = "Cmd+A"
         MenuModifier = True
         AutoEnable = True
      End
      Begin MenuItem EditCut
         SpecialMenu = 0
         Text = "Cu&t"
         Index = -2147483648
         ShortcutKey = "X"
         Shortcut = "Cmd+X"
         MenuModifier = True
         AutoEnable = True
      End
      Begin MenuItem EditCopy
         SpecialMenu = 0
         Text = "&Copy"
         Index = -2147483648
         ShortcutKey = "C"
         Shortcut = "Cmd+C"
         MenuModifier = True
         AutoEnable = True
      End
      Begin MenuItem EditPaste
         SpecialMenu = 0
         Text = "&Paste"
         Index = -2147483648
         ShortcutKey = "V"
         Shortcut = "Cmd+V"
         MenuModifier = True
         AutoEnable = True
      End
      Begin MenuItem EditClear
         SpecialMenu = 0
         Text = "Clear"
         Index = -2147483648
         AutoEnable = True
      End
      Begin MenuItem 
         SpecialMenu = 2
         Text = ""
         Index = -2147483648
         AutoEnable = True
      End
   End
   Begin MenuItem KarelMenu
      SpecialMenu = 0
      Text = "Karel"
      Index = -2147483648
      AutoEnable = True
      Begin MenuItem KarelRun
         SpecialMenu = 0
         Text = "Run"
         Index = -2147483648
         ShortcutKey = "R"
         Shortcut = "Cmd+R"
         MenuModifier = True
         AutoEnable = True
      End
      Begin MenuItem KarelLoadWorld
         SpecialMenu = 0
         Text = "Load World"
         Index = -2147483648
         ShortcutKey = "L"
         Shortcut = "Cmd+L"
         MenuModifier = True
         AutoEnable = False
      End
      Begin MenuItem 
         SpecialMenu = 2
         Text = ""
         Index = -2147483648
         AutoEnable = True
      End
      Begin MenuItem UntitledSeparator0
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
      End
      Begin MenuItem KarelHideControls
         SpecialMenu = 0
         Text = "Hide Controls"
         Index = -2147483648
         AutoEnable = True
      End
      Begin MenuItem KarelHideScripts
         SpecialMenu = 0
         Text = "Hide Scripts"
         Index = -2147483648
         AutoEnable = True
      End
      Begin AppleMenuItem KarelAbout
         SpecialMenu = 0
         Text = "About rbKarel..."
         Index = -2147483648
         AutoEnable = True
      End
      Begin AppleMenuItem 
         SpecialMenu = 2
         Text = ""
         Index = -2147483648
         AutoEnable = True
      End
   End
   Begin MenuItem 
      SpecialMenu = 2
      Text = ""
      Index = -2147483648
      AutoEnable = True
   End
End
#tag EndMenu
