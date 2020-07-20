initialize
initializeEvents
	super initializeEvents.
	self when: BlMouseLeaveEvent do: [ :e |
		self announceAction: (LAAnnMouseLeaveMessage new 
											message: self; yourself)
		].
	
	self when: BlMouseEnterEvent do: [ :e |
		self announceAction: (LAAnnMouseEnterMessage new 
											message: self; yourself). 
			
		].

	self onAction: LAAnnTextSelected do: [ :e |
		e empty 
			ifTrue: [ self resetColorIfNeeded ] 
			ifFalse: [ self highlightIfContains: e text ]
		].
	
	self when: BlMouseDownEvent do: [ :e | 
		e button class = BlMousePrimaryButton ifTrue: [ 
			self announceAction: (LAAnnMessageClicked new message: self; yourself). ].
		
		e button class = BlMouseSecondaryButton ifTrue: [
			self announceAction: (LAAnnMessageRightClicked new message: self; yourself).]
		].
		