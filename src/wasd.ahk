#SingleInstance Force

send := 1


#IfWinActive Red Alert 2
	w::
		if (send = 1) {
			w::up
		}else{
			Send, {w}
		}
		return

	a::
		if (send = 1) {
			a::left
		}else{
			Send, {a}
		}
		return

	s::
		if (send = 1) {
			s::down
		}else{
			Send, {s}
		}
		return

	d::
		if (send = 1) {
			d::right
		}else{
			Send, {d}
		}
		return

	Scrolllock::
		send := !send
		return
#IfWinActive

#IfWinActive Yuris Revenge
	w::
		if (send = 1) {
			w::up
		}else{
			Send, {w}
		}
		return

	a::
		if (send = 1) {
			a::left
		}else{
			Send, {a}
		}
		return

	s::
		if (send = 1) {
			s::down
		}else{
			Send, {s}
		}
		return

	d::
		if (send = 1) {
			d::right
		}else{
			Send, {d}
		}
		return

	Scrolllock::
		send := !send
		return
#IfWinActive