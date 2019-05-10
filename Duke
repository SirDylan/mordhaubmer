#SingleInstance force
#SingleInstance force
#NoEnv
#Include AppFactory.ahk

; --- begin
CustomWinTitle := "ahk_exe Mordhau-Win64-Shipping.exe"
;~ CustomWinTitle := "ahk_class Notepad"
CustomContext := Func("EnableHotkeys")
; --- end

Gui, +hwndhMain
Gui, 1:Default
factory := new AppFactory()

;~ Gui, 1:+AlwaysOnTop ; AlwaysOnTop goes over top of "Press Key to Bind" menu. May need some way of turning this on/off
Gui, 1:Color, d1ba98, 282a2e
Gui, 1:Font, S12 CDefault Bold, Verdana
Gui, 1:Font, S8 CDefault, Verdana
Gui, 1:Add, Text, x12 y9 w170 h20 , Action:               Hotkey:
Gui, 1:Add, Text, x12 y39 w110 h20 , Yes
Gui, 1:Add, Text, x12 y69 w110 h20 , No
Gui, 1:Add, Text, x12 y99 w110 h20 , Hello
Gui, 1:Add, Text, x12 y129 w110 h20 , Insult
Gui, 1:Add, Text, x12 y159 w110 h20 , Laugh+Emote
Gui, 1:Add, Text, x12 y189 w110 h20 , Help+Emote
Gui, 1:Add, Text, x12 y219 w110 h20 , Intim.+Emote
Gui, 1:Font, S7 CDefault, Verdana
Gui, 1:Add, Button, x122 y249 w60 h30 gHelp, Help
factory.AddInputButton("Yes", "x122 y39 w200 h20", Func("YesKey"))
factory.AddInputButton("No", "x122 y69 w200 h20", Func("NoKey"))
factory.AddInputButton("Hello", "x122 y99 w200 h20", Func("HelloKey"))
factory.AddInputButton("Insult", "x122 y129 w200 h20", Func("InsultKey"))
factory.AddInputButton("Laugh", "x122 y159 w200 h20", Func("LaughKey"))
factory.AddInputButton("Help", "x122 y189 w200 h20", Func("HelpKey"))
factory.AddInputButton("Intim", "x122 y219 w200 h20", Func("IntimKey"))
Gui, 1: Show
return

; --- begin
; Do not edit, just paste into your script
EnableHotkeys(){
	global _AppFactoryBindMode, CustomWinTitle
	return !_AppFactoryBindMode && WinActive(CustomWinTitle)
}
; --- end

^Esc::
GuiClose:
	ExitApp


Help:
	Gui, 2:Color, d1ba98, 282a2e
	Gui, 2:Font, S8 CDefault Bold, Verdana
	Gui, 2:Add, Text, x12 y9 w450 h30 , Click 'Select Binding..' and follow the prompt to create a new hotkey.
	Gui, 2:Add, Text, x72 y39 w320 h30 , If experiencing issues select 'Suppress Repeats'.
	Gui, 2:Add, Text, x72 y69 w340 h30 , Select 'Clear' to remove hotkeys for the action.
	Gui, 2:Add, Text, x22 y99 w440 h20 , Avoid binding (0-9) and Left Click as it will conflict with gameplay.
	Gui, 2:Add, Text, x112 y129 w280 h20 , Report Errors to Original Reddit Post.
	; Generated using SmartGUI Creator 4.0
	Gui, 2:Show, x1690 y341 h160 w479, New GUI Window
Return


;;--- Tool Tips are temporary for testing purposes
YesKey(state){
	if (!state)
		return ; Ignore key release
	Send, c1
}

NoKey(state){
	if (!state)
		return ; Ignore key release
	Send, c2
}

HelloKey(state){
	if (!state)
		return ; Ignore key release
	Send, ccc2
}

InsultKey(state){
	if (!state)
		return ; Ignore key release
	Send, c4
}

LaughKey(state){
	if (!state)
		return ; Ignore key release
	Send, xxx1cc2
}

HelpKey(state){
	if (!state)
		return ; Ignore key release
	Send, xx9c3
}

IntimKey(state){
	if (!state)
		return ; Ignore key release
	Send, x1c5
}
