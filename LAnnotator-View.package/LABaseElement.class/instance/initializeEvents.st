initialization
initializeEvents
	self when: BlClickEvent do: [ :e |
		self app announcer announce: (LAAnnUIClick new blClickEvent: e; yourself).
		
	 ].
	self when: BlMouseWheelEvent do: [ :e |
		self app announcer announce: (LAAnnScroll new scrollEvent: e; scrollElement: self app scrollListView; yourself).
	 ].
	