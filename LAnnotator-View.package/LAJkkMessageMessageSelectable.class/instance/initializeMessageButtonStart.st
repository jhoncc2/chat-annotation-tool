initialization
initializeMessageButtonStart
	button := LALayoutBoxElement new.
	button constraintsDo: [ :c |
		c minWidth: 20.
		c vertical matchParent
		].
	button background: Color red.
	self addChild: button.
	button when: BlMouseDownEvent do: [ :e |
		self announceAction: (LAAnnMessageUnlinkButton new message: self; yourself).
		e consumed: true.
		].
	" "
	button when: BlMouseLeaveEvent do: [ :e |
		self announceAction: LAAnnEnableLinking new.
		e consumed: true.
		].
	
	button when: BlMouseEnterEvent do: [ :e |
		self announceAction: LAAnnEnableUnlinking new.
		e consumed: true.
		].