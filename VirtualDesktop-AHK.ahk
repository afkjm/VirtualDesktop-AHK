
VIRTUALDESKTOP_PATH := "C:\Users\jay\_config\VirtualDesktop11.exe"

SwitchDesktop(n) { 
	RunWait(VIRTUALDESKTOP_PATH " /Switch:" n,, 'Hide')
	Send("{Blind}{Escape}")
}
!1::SwitchDesktop(0)
!2::SwitchDesktop(1)
!3::SwitchDesktop(2)
!4::SwitchDesktop(3)
!5::SwitchDesktop(4)

MoveActiveWindowToDesktop(n) { 
	RunWait(VIRTUALDESKTOP_PATH " /GetDesktop:" n " /MoveActiveWindow",, 'Hide')
	Send("{Escape}")
}
^!1::MoveActiveWindowToDesktop(0)
^!2::MoveActiveWindowToDesktop(1)
^!3::MoveActiveWindowToDesktop(2)
^!4::MoveActiveWindowToDesktop(3)
^!5::MoveActiveWindowToDesktop(4)
