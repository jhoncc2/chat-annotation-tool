initialization
initializeLogEvents
	self when: LACreateUntangling do: [ :e | self handleLogEvent: e  ].
	self when: LARemoveUntangling do: [ :e | self handleLogEvent: e ].
	self when: LASelectUntangling do: [ :e | self handleLogEvent: e ].
	