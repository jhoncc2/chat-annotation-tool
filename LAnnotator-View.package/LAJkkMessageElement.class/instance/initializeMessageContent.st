initialization
initializeMessageContent
	messagePharagraph := self newPharagraphElement  
		text: self messageModel parsedContent;
		background: (Color gray alpha: 0.1);
		yourself. 
	self addChild: messagePharagraph.
	messagePharagraph margin: (BlInsets all: 5).
	messagePharagraph constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical fitContent ].
	
	