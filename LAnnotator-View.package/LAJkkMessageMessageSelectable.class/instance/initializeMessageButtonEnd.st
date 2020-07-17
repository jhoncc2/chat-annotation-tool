initialization
initializeMessageButtonEnd
	buttonB := LALayoutBoxElement new.
	buttonB constraintsDo: [ :c |
		c minWidth: 20.
		c vertical matchParent
		].
	buttonB background: (Color fromHexString: #'29a19c').
	self addChild: buttonB.
	buttonB when: BlMouseDownEvent do: [ :e |
		self announceAction: (LAAnnMessageAnchoredMoveButton new message: self; yourself).
		e consumed: true.
		].
	buttonB when: BlMouseLeaveEvent do: [ :e |
		self announceAction: LAAnnUnPreselectAnchorMessage new.
		e consumed: true.
		].
	buttonB when: BlMouseEnterEvent do: [ :e |
		self announceAction: LAAnnPreselectAnchorMessage new.
		e consumed: true.
		].