events
initializeLogEvents
	self when: LACreateUntangling do: [ :e | 
		self handleLogEvent: e.
		self infoPanel updateInformation. ].
	self when: LARemoveUntangling do: [ :e | 
		self handleLogEvent: e. 
		self infoPanel updateInformation. ].
	self when: LASelectUntangling do: [ :e | 
		self handleLogEvent: e. 
		listView updateSimilarityFor: e aMessage.
	].
	