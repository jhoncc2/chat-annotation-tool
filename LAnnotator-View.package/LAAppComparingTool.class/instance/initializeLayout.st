initialization
initializeLayout
	super initializeLayout.
	self constraintsDo: [ :c |
		c vertical matchParent.
		c horizontal matchParent.
	].

	self layout: BlLinearLayout horizontal.