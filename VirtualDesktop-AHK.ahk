
#UseHook True


VIRTUALDESKTOP_PATH := "C:\Users\<USER>\_config\VirtualDesktop11.exe"

;; "Show Flashing on Taskbar Apps" in Windows settings has bearing here? 
SwitchDesktop(n) { 
	RunWait(VIRTUALDESKTOP_PATH " /Switch:" n,, 'Hide')
	;; or "{Tab}" ? ;; not using "!{Escape}" with 
	SendPlay("{Escape}")  ; 20240522 `SendPlay` is the way to go??
}
~$!1::SwitchDesktop(0)
~$!2::SwitchDesktop(1)
~$!3::SwitchDesktop(2)
~$!4::SwitchDesktop(3)
~$!5::SwitchDesktop(4)


MoveActiveWindowToDesktop(n) { 
	RunWait(VIRTUALDESKTOP_PATH " /GetDesktop:" n " /MoveActiveWindow",, 'Hide')
	SendPlay("{Escape}")
}
~$^!1::MoveActiveWindowToDesktop(0)
~$^!2::MoveActiveWindowToDesktop(1)
~$^!3::MoveActiveWindowToDesktop(2)
~$^!4::MoveActiveWindowToDesktop(3)
~$^!5::MoveActiveWindowToDesktop(4)
