initialization
initialize
	super initialize.
	logQueue := OrderedCollection empty.
	shouldStop := false.
	self startProcess.