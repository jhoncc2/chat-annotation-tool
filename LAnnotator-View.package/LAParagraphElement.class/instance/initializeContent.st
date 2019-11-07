accessing
initializeContent
	super initializeContent.
	
	self textElement constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical fitContent ].

	self addChild: textElement