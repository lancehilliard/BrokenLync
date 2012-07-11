; Control key  ^
; Alt key      !
; Shift key    +
; Windows key  # 

;Allows for the script to be reloaded everytime it's saved
SetTimer,UPDATEDSCRIPT,1000

UPDATEDSCRIPT:
FileGetAttrib,attribs,%A_ScriptFullPath%
IfInString,attribs,A
{
FileSetAttrib,-A,%A_ScriptFullPath%
Sleep,500
Reload
}
Return 

#IfWinActive ahk_class IMWindowClass
Escape:: SaveAndClose()
$!F4:: SaveAndClose()
$^F4:: SaveAndClose()
return

SaveAndClose()
{
send, ^s{Escape}
return
}
