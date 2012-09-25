; Control key  ^
; Alt key      !
; Shift key    +
; Windows key  # 

SetTimer,EVERY_SECOND,1000

EVERY_SECOND:

	; Close Lync Roster window if it's in the background
	if !WinActive("ahk_class CommunicatorMainWindowClass")
    		WinHide, ahk_class CommunicatorMainWindowClass

	; Update the script if it has changed
	FileGetAttrib,attribs,%A_ScriptFullPath%
	IfInString,attribs,A
	{
		FileSetAttrib,-A,%A_ScriptFullPath%
		Sleep,500
		Reload
	}
Return

#Persistent
return