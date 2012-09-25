; Control key  ^
; Alt key      !
; Shift key    +
; Windows key  # 

SetTitleMatchMode, 2
SetTitleMatchMode, Slow

SetTimer,EVERY_SECOND,1000

EVERY_SECOND:  
	; Close Lync Meeting Join browser window if it's in the background
	if !WinActive("Microsoft Lync 2010",CLOSELYNCMEETINGJOINWINDOW_MEETINGADDRESS)
    		WinClose, Microsoft Lync 2010,%CLOSELYNCMEETINGJOINWINDOW_MEETINGADDRESS%

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