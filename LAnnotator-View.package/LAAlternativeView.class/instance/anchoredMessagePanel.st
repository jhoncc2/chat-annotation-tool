panels
anchoredMessagePanel
	anchoredMessagePanel := LAAnchoredMessagePanel new.
	anchoredMessagePanel layout: (BlLinearLayout horizontal).
	anchoredMessagePanel constraintsDo: [ :c | c vertical fitContent. ].
	anchoredMessagePanel padding: (BlInsets all: 3).

	^ 	anchoredMessagePanel