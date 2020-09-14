initialize
initializeMessageContent
	messagePharagraph := (self newPharagraphElement) text: self messageModel parsedContent.
	self addChild: messagePharagraph.
	messagePharagraph constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical fitContent]