initialization
initializeContent
	super initializeContent.

	self barElements constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical fitContent ].

	self addChild: textElement