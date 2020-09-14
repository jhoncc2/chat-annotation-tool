accessing
initializeContent
	super initializeContent.
	self textElement constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical fitContent
			 ].
		
	self constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical fitContent
			 ].
	
	self addChild: textElement.
	self margin: (BlInsets all: 5).
	self background: (Color gray alpha: 0.1).