; Control key  ^
; Alt key      !
; Shift key    +
; Windows key  # 

; this must remain at top of file
SetTitleMatchMode 2

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

#IfWinActive , Microsoft Visual Studio
$^+Space:: send, ^kp ;Ctrl-Shift-Space => Ctrl+K, P: Visual Studio's "Edit.ParameterInfo"
return
#IfWinActive
;$^+Space:: ;Ctrl-Shift-Space => nothing
