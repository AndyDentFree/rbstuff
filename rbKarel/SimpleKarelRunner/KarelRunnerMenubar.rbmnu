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
      Begin MenuItem FileOpenImage
         SpecialMenu = 0
         Text = "Open Image..."
         Index = -2147483648
         ShortcutKey = "O"
         Shortcut = "Cmd+O"
         MenuModifier = True
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
      Begin MenuItem 
         SpecialMenu = 2
         Text = ""
         Index = -2147483648
         AutoEnable = True
      End
      Begin MenuItem KarelLoadMap
         SpecialMenu = 0
         Text = "Load Map"
         Index = -2147483648
         ShortcutKey = "L"
         Shortcut = "Cmd+L"
         MenuModifier = True
         AutoEnable = True
      End
      Begin AppleMenuItem KarelAboutrbKarel
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
   Begin MenuItem SamplesMenu
      SpecialMenu = 0
      Text = "Samples"
      Index = -2147483648
      AutoEnable = True
      Begin MenuItem SamplesMap1
         SpecialMenu = 0
         Text = "Map 1"
         Index = -2147483648
         ShortcutKey = "1"
         Shortcut = "Cmd+1"
         MenuModifier = True
         AutoEnable = True
      End
      Begin MenuItem SamplesMap2
         SpecialMenu = 0
         Text = "Map 2"
         Index = -2147483648
         ShortcutKey = "2"
         Shortcut = "Cmd+2"
         MenuModifier = True
         AutoEnable = True
      End
      Begin MenuItem UntitledSeparator
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
      End
      Begin MenuItem SamplesKarel1
         SpecialMenu = 0
         Text = "Karel 1"
         Index = -2147483648
         ShortcutKey = "1"
         Shortcut = "Cmd+Shift+1"
         MenuModifier = True
         AltMenuModifier = True
         AutoEnable = True
      End
      Begin MenuItem SamplesKarel2
         SpecialMenu = 0
         Text = "Karel 2"
         Index = -2147483648
         ShortcutKey = "2"
         Shortcut = "Cmd+Shift+2"
         MenuModifier = True
         AltMenuModifier = True
         AutoEnable = True
      End
      Begin MenuItem SamplesKarel3
         SpecialMenu = 0
         Text = "Karel 3"
         Index = -2147483648
         ShortcutKey = "3"
         Shortcut = "Cmd+Shift+3"
         MenuModifier = True
         AltMenuModifier = True
         AutoEnable = True
      End
   End
End
#tag EndMenu
