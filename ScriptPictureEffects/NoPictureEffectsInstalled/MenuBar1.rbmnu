#tag Menu
Begin Menu MenuBar1
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
   Begin MenuItem TestMenu
      SpecialMenu = 0
      Text = "Test"
      Index = -2147483648
      AutoEnable = True
      Begin MenuItem TestApplyScript
         SpecialMenu = 0
         Text = "Apply Script"
         Index = -2147483648
         ShortcutKey = "1"
         Shortcut = "Cmd+1"
         MenuModifier = True
         AutoEnable = True
      End
      Begin MenuItem TestInsertScript
         SpecialMenu = 0
         Text = "Insert Script"
         Index = -2147483648
         ShortcutKey = "2"
         Shortcut = "Cmd+2"
         MenuModifier = True
         AutoEnable = True
      End
      Begin MenuItem 
         SpecialMenu = 2
         Text = ""
         Index = -2147483648
         AutoEnable = True
      End
      Begin AppleMenuItem About
         SpecialMenu = 0
         Text = "About ScriptPictureEffects..."
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
