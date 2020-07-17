initialization
initializeMessageButtonStart
	button := LALayoutBoxElement new.
	button constraintsDo: [ :c |
		c minWidth: 20.
		c vertical matchParent
		].
	button background: (Color darkGray alpha: 0.7).
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