accessing
initializeLayout
	super initializeLayout.
	"self constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical fitContent]"