initialization
initializeLogEvents
	self when: LACreateUntangling do: [ :e | 
		self handleLogEvent: e.
		 ].
	self when: LARemoveUntangling do: [ :e | 
		self handleLogEvent: e. 
		 ].
	self when: LASelectUntangling do: [ :e | self handleLogEvent: e ].

	self app announcer when: LAAnnUIClick do: [ :ann | 
		self handleLogEvent: ann.
	].
	self app announcer when: LAAnnScroll do: [ :ann | 
		self handleLogEvent: ann.
	].
