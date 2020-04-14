initialization
initializeLayout
	self constraintsDo: [ :c |
		c vertical matchParent.
		c horizontal matchParent.
		].
	
	self layout: BlLinearLayout vertical alignCenter.
	