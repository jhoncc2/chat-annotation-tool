initialize
initializeEvents
	super initializeEvents.
	self when: BlMouseOutEvent do: [ :e |
		Transcript show: 'out ' ; show: self messageModel index; cr. 
		].
	
	self when: BlMouseOutEvent do: [ :e |
		Transcript show: 'in ' ; show: self messageModel index; cr. 
		]