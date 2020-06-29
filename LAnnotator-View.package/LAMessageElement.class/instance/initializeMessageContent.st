initialize
initializeMessageContent
	messagePharagraph := (self newPharagraphElement) text: self messageModel parsedContent.

	self addChild: messagePharagraph 