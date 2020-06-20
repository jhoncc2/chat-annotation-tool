initialization
initializeEvents
	self when: BlClickEvent do: [ :e |
		self app announcer announce: (LAAnnUIClick new blClickEvent: e; yourself).
	 ].
	
	