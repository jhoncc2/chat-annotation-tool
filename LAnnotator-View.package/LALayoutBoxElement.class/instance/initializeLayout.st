layout
initializeLayout
	super initializeLayout.
	self constraintsDo: [ :c | 
			c horizontal fitContent.
			c vertical fitContent ]