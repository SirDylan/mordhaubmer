#SingleInstance force
#SingleInstance force
#NoEnv
#Include AppFactory.ahk
#IfWinActive MORDHAU

;;---------------
;; Change Log
;;--------------
;;  v3 - 05/12/2019
;; 1. Added a change log
;; 2. Added pause toggle
;; 3. All actions have been added!
;; 4. New GUI!


; --- begin
CustomWinTitle := "ahk_exe Mordhau-Win64-Shipping.exe"
;~ CustomWinTitle := "ahk_class Notepad"
CustomContext := Func("EnableHotkeys")
; --- end

Gui, +hwndhMain
Gui, 1:Default
factory := new AppFactory()
pauseStatus:= "Off"
FontColor := "cE8A128" 
logo = A:\AHK\Msc. Games\Mordhau\MordhauBm\logo.png
FileInstall, logo.png, %logo%, 1



;~ Gui, 1:+AlwaysOnTop ; AlwaysOnTop goes over top of "Press Key to Bind" menu. May need some way of turning this on/off
tabs:=3
Gui, 1:Add, Tab2, vTab w280 h565, Voice|Emotes|Help
Gui, 1:Font, S8 CDefault Bold, Verdana
;;----------------------------------
;; GUI 1 Voice Tab
;;---------------------------------
Gui, 1:Tab, Voice
;;Voice Tab Actions
Gui, 1:Add, Text, , Yes
Gui, 1:Add, Text, , No
Gui, 1:Add, Text, , Help
Gui, 1:Add, Text, , Insult
Gui, 1:Add, Text, , Intimidate
Gui, 1:Add, Text, , Sorry
Gui, 1:Add, Text, , Laugh
Gui, 1:Add, Text, , Thanks
Gui, 1:Add, Text, , Friendlies
Gui, 1:Add, Text, , Retreat
Gui, 1:Add, Text, , Hold
Gui, 1:Add, Text, , Hello
Gui, 1:Add, Text, , Follow
Gui, 1:Add, Text, , Respect
Gui, 1:Add, Text, , Charge
Gui, 1:Add, Picture, w247 h135, %logo%   ;;1658 x 913
;;Voice Tab Hotkeys
factory.AddInputButton("Yes", "x93 y33 w180 h20", Func("YesKey"))
factory.AddInputButton("No", "x93 y59 w180 h20", Func("NoKey"))
factory.AddInputButton("Help", " x93 y85 w180 h20", Func("HelpKey"))
factory.AddInputButton("Insult", " x93 y111 w180 h20", Func("InsultKey"))
factory.AddInputButton("Intimidate", " x93 y139 w180 h20", Func("IntimidateKey"))
factory.AddInputButton("Sorry", " x93 y167 w180 h20", Func("SorryKey"))
factory.AddInputButton("Laugh", " x93 y194 w180 h20", Func("LaughKey"))
factory.AddInputButton("Thanks", " x93 y220 w180 h20", Func("ThanksKey"))
factory.AddInputButton("Friendlies", " x93 y248 w180 h20", Func("FriendliesKey"))
factory.AddInputButton("Retreat", " x93 y275 w180 h20", Func("RetreatKey"))
factory.AddInputButton("Hold", " x93 y302 w180 h20", Func("HoldKey"))
factory.AddInputButton("Hello", " x93 y329 w180 h20", Func("HelloKey"))
factory.AddInputButton("Follow", " x93 y356 w180 h20", Func("FollowKey"))
factory.AddInputButton("Respect", " x93 y383 w180 h20", Func("RespectKey"))
factory.AddInputButton("Charge", "x93 y410 w180 h20", Func("ChargeKey"))
;;---------------------
;; GUI 1  EMOTE TAB
;;---------------------
Gui, 1:Tab, Emotes
Winset, Redraw
;; Emote Tab Actions
Gui, 1:Add, Text,  , Flourish
Gui, 1:Add, Text, , Raise
Gui, 1:Add, Text, , W. Salute
Gui, 1:Add, Text, , Come
Gui, 1:Add, Text, , Throat Cut
Gui, 1:Add, Text, , Salute
Gui, 1:Add, Text, , FacePalm
Gui, 1:Add, Text, , Squat
Gui, 1:Add, Text, , Yelling
Gui, 1:Add, Text, , Cheer
Gui, 1:Add, Text, , Dance
Gui, 1:Add, Text, , Shake
Gui, 1:Add, Text, , Shrug
Gui, 1:Add, Text, , Roar
Gui, 1:Add, Text, , Yield
Gui, 1:Add, Text, , Cowar
Gui, 1:Add, Text, , Laughing
Gui, 1:Add, Text, , Point Back
Gui, 1:Add, Text, , It's Over
Gui, 1:Add, Text, , Bow
;; Emote Tab Hotkeys
factory.AddInputButton("Flourish", "x93 y33 w180 h20", Func("FlourishKey"))
factory.AddInputButton("Raise", "x93 y59 w180 h20", Func("RaiseKey"))
factory.AddInputButton("WepSalute", " x93 y85 w180 h20", Func("WepSaluteKey"))
factory.AddInputButton("Come", " x93 y111 w180 h20", Func("ComeKey"))
factory.AddInputButton("ThroatCut", " x93 y139 w180 h20", Func("ThroatCutKey"))
factory.AddInputButton("Salute", " x93 y167 w180 h20", Func("SaluteKey"))
factory.AddInputButton("FacePalm", " x93 y194 w180 h20", Func("FacePalmKey"))
factory.AddInputButton("Squat", " x93 y220 w180 h20", Func("SquatKey"))
factory.AddInputButton("Yelling", " x93 y248 w180 h20", Func("YellingKey"))
factory.AddInputButton("Cheer", " x93 y275 w180 h20", Func("CheerKey"))
factory.AddInputButton("Dance", " x93 y302 w180 h20", Func("DanceKey"))
factory.AddInputButton("Shake", " x93 y329 w180 h20", Func("ShakeKey"))
factory.AddInputButton("Shrug", " x93 y356 w180 h20", Func("ShrugKey"))
factory.AddInputButton("Roar", " x93 y383 w180 h20", Func("RoarKey"))
factory.AddInputButton("Yield", "x93 y410 w180 h20", Func("YieldKey"))
factory.AddInputButton("Cowar", " x93 y437 w180 h20", Func("CowarKey"))
factory.AddInputButton("Laughing", " x93 y464 w180 h20", Func("LaughingKey"))
factory.AddInputButton("PointBack", " x93 y489 w180 h20", Func("PointBackKey"))
factory.AddInputButton("ItsOver", " x93 y517 w180 h20", Func("ItsOverKey"))
factory.AddInputButton("Bow", " x93 y544 w180 h20", Func("BowKey"))
;;--------------------------------
;; GUI 1 HELP TAB
;;--------------------------------
Gui 1:Tab, Help
	Gui, 1:Add, Text,  , Script Tips:
	Gui, 1:Add, Text, , Click "Select Binding" & Follow Prompt.
	Gui, 1:Add, Text, , Select 'Clear' to remove hotkeys.
	Gui, 1:Add, Text,  , Do not bind Left Click!
	Gui, 1:Add, Text,  , Avoiding binding 2 actions to same key.
	Gui, 1:Add, Text, , Use DEFAULT binds for chat commands!
	Gui, 1:Add, Text, ,
	Gui, 1:Add, Text,  , 
	Gui, 1:Add, Text,  , 
	Gui, 1:Add, Text, , 
	Gui, 1:Add, Text, , 
	Gui, 1:Add, Text, , 
	Gui, 1:Add, Text, , 
	Gui, 1:Add, Text, , 
	Gui, 1:Add, Text, , 
	Gui, 1:Add, Text, , 
	Gui, 1:Add, Text, ,
	Gui, 1:Add, Text, ,  Please report bugs to the GitHub
	Gui, 1:Add, Text, , Thanks for using Duke's Bmer!
Gui, 1: Show, AutoSize  x250, Duke's Bmer, , 
return

;; Pause Toggles
~Y:: 
        Gui 3:Margin, 5, 5
        Gui 3:Color, Black, Black
        Gui 3: +AlwaysOnTop -SysMenu -ToolWindow -caption -Border 
        Gui 3:Font, %FontColor% s30 q5 wBold, Arial Black 
        Gui 3:Add, Text, BackgroundTrans, Script is now paused! Press Enter to continue.
        Gui +LastFound
        Winset, TransColor, Black
        Gui 3:Show, Autosize xCenter NoActivate y90
		Suspend, On
return
~U:: 
        Gui 3:Margin, 5, 5
        Gui 3:Color, Black, Black
        Gui 3: +AlwaysOnTop -SysMenu -ToolWindow -caption -Border 
        Gui 3:Font, %FontColor% s30 q5 wBold, Arial Black 
        Gui 3:Add, Text, BackgroundTrans, Script is now paused! Press Enter to continue.
        Gui +LastFound
        Winset, TransColor, Black
        Gui 3:Show, NoActivate y90
		Suspend, On
return

~Enter:: 
	Suspend, Off
		Gui 3: Destroy
		Sleep, 100
	Suspend, Off
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



;;-------------------
;; Emote Commands
;;-------------------
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

HelpKey(state){
	if (!state)
		return ; Ignore key release
	 
	Send, c3
	 	
}

InsultKey(state){
	if (!state)
		return ; Ignore key release
	 
	Send, c4
	 
}

IntimidateKey(state){
	if (!state)
		return ; Ignore key release
	 
	Send, c5
	 
}

SorryKey(state){
	if (!state)
		return ; Ignore key release
	 
	Send, cc1
	 
}

LaughKey(state){
	if (!state)
		return ; Ignore key release
	 
	Send, cc2
	 
}

ThanksKey(state){
	if (!state)
		return ; Ignore key release
	 
	Send, cc3
	 
}

FriendliesKey(state){
	if (!state)
		return ; Ignore key release
	 
	Send, cc4
	 
}

RetreatKey(state){
	if (!state)
		return ; Ignore key release
	 
	Send, cc5
	 
}

HoldKey(state){
	if (!state)
		return ; Ignore key release
	 
	Send, ccc1
	 
}

HelloKey(state){
	if (!state)
		return ; Ignore key release
	 
	Send, ccc2
	 
}

FollowKey(state){
	if (!state)
		return ; Ignore key release
	 
	Send, ccc3
	 
}

RespectKey(state){
	if (!state)
		return ; Ignore key release
	 
	Send, ccc4
	 
}

ChargeKey(state){
	if (!state)
		return ; Ignore key release
	 
	Send, ccc5
	 
}

;;----------------------
;; Emote Commands
;;----------------------

FlourishKey(state){
	if (!state)
		return ; Ignore key release
	Send, x1
}

RaiseKey(state){
	if (!state)
		return ; Ignore key release
	Send, x2
}

WepSaluteKey(state){
	if (!state)
		return ; Ignore key release
	Send, x3
}

ComeKey(state){
	if (!state)
		return ; Ignore key release
	Send, x4
}

ThroatCutKey(state){
	if (!state)
		return ; Ignore key release
	Send, x5
}

SaluteKey(state){
	if (!state)
		return ; Ignore key release
	Send, x6
}

FacePalmKey(state){
	if (!state)
		return ; Ignore key release
	Send, x7
}

SquatKey(state){
	if (!state)
		return ; Ignore key release
	Send, x8
}

YellingKey(state){
	if (!state)
		return ; Ignore key release
	Send, x9
}

CheerKey(state){
	if (!state)
		return ; Ignore key release
	Send, xx1
}

DanceKey(state){
	if (!state)
		return ; Ignore key release
	Send, xx2
}

DisapproveKey(state){
	if (!state)
		return ; Ignore key release
	Send, xx3
}

ShakeKey(state){
	if (!state)
		return ; Ignore key release
	Send, xx4
}

ShrugKey(state){
	if (!state)
		return ; Ignore key release
	Send, xx5
}

RoarKey(state){
	if (!state)
		return ; Ignore key release
	Send, xx7
}

YieldKey(state){
	if (!state)
		return ; Ignore key release
	Send, xx8
}

CowarKey(state){
	if (!state)
		return ; Ignore key release
	Send, xx9
}

LaughingKey(state){
	if (!state)
		return ; Ignore key release
	Send, xxx1
}

PointBackKey(state){
	if (!state)
		return ; Ignore key release
	Send, xxx2
}

ItsOverKey(state){
	if (!state)
		return ; Ignore key release
	Send, xxx3
}

BowKey(state){
	if (!state)
		return ; Ignore key release
	Send, xxx4
}



















