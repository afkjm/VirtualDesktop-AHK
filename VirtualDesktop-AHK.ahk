
; https://github.com/MScholtes/VirtualDesktop
VIRTUALDESKTOP_PATH := "...\VirtualDesktop11.exe"

SwitchDesktop(n) { 
	RunWait(VIRTUALDESKTOP_PATH " /Switch:" n,, 'Hide')
	; Send("{Blind}{Escape}") ;; not necessary?
}

!1::SwitchDesktop(0)
!2::SwitchDesktop(1)
!3::SwitchDesktop(2)
!4::SwitchDesktop(3)
!5::SwitchDesktop(4)

MoveActiveWindowToDesktop(n) { 
	RunWait(VIRTUALDESKTOP_PATH " /GetDesktop:" n " /MoveActiveWindow",, 'Hide')
	; Send("{Escape}") ;; not necessary?
}
^!1::MoveActiveWindowToDesktop(0)
^!2::MoveActiveWindowToDesktop(1)
^!3::MoveActiveWindowToDesktop(2)
^!4::MoveActiveWindowToDesktop(3)
^!5::MoveActiveWindowToDesktop(4)
