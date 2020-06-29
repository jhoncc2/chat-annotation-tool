initialize
initializeEvents
	super initializeEvents.
	self when: BlMouseOutEvent do: [ :e |
		Transcript show: 'out ' ; show: self messageModel index; cr. 
		].
	
	self when: BlMouseOutEvent do: [ :e |
		Transcript show: 'in ' ; show: self messageModel index; cr. 
		].

	self onAction: LAAnnTextSelected do: [ :e |
		e empty 
			ifTrue: [ self resetColorIfNeeded ] 
			ifFalse: [ self highlightIfContains: e text ]
		 ]