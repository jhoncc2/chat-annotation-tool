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
	self when: BlClickEvent do: [ :e |
		self announceAction: (LAAnnMessageClicked new message: self; yourself).
		]