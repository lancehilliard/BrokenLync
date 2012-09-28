; Control key  ^
; Alt key      !
; Shift key    +
; Windows key  # 

SetTitleMatchMode slow
SetTimer,EVERY_SECOND,1000

EVERY_SECOND:
	; Select the default option of the "Open Recurring Item" dialog
	if WinActive("Open Recurring Item", "Do you want to open only this occurrence or the series?")
    		send, {Enter}

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










