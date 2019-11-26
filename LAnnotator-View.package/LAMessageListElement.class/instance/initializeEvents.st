initialization
initializeEvents
	super initializeEvents.
	self when: BlClickEvent do: [ :e | self handleClick: e ]