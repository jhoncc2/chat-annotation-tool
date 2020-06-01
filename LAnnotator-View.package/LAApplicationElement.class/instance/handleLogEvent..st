logging
handleLogEvent: anEvent
	self eventLogger ifNotNil: [ 
		self eventLogger logEvent: anEvent
	]