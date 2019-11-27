initialization
initializeLayout
	super initializeLayout.
	self initializePanels.
	self constraintsDo: [ :c |
		c vertical matchParent.
		c horizontal matchParent.
		].
	
	self layout: BlLinearLayout horizontal alignCenter.
	