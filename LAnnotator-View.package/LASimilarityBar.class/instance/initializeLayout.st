initialization
initializeLayout
	super initializeLayout.
	self constraintsDo: [ :c |
			c horizontal exact: 20.
			c vertical matchParent ]