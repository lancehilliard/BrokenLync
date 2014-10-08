; Control key  ^
; Alt key      !
; Shift key    +
; Windows key  # 

SetTitleMatchMode 2
SetTitleMatchMode slow

SetTimer,EVERY_SECOND,1000

EVERY_SECOND:
	; Close Meeting Occurrence window if it's in the background while IM window is in foreground
	if WinActive("ahk_class LyncConversationWindowClass")
	if !WinActive(" - Meeting")
    		WinClose, - Meeting

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