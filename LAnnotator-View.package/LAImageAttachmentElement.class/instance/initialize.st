initialization
initialize
	super initialize.
	self when: BlClickEvent do: [ :e | self openImage ]
	