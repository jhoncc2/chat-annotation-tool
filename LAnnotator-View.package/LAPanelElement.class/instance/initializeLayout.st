initialization
initializeLayout
	super initializeLayout.
	self margin: (BlInsets all: 10);
		padding: (BlInsets all: 10);
		background: Color white;
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical matchParent ].