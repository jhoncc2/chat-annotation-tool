initialize
initializeMessageContent
	self messageModel parsedContent. 
	messagePharagraph := (self newPharagraphElement) text: self messageModel parsedContent.
	self addChild: messagePharagraph 