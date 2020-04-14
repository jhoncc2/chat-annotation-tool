initialization
initializeLayout
	super initializeLayout.
	self constraintsDo: [ :c | 
			self halt.
			c horizontal exact: 20.
			c vertical matchParent ]