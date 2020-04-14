initialize
initializeMessageContent
	| messageText |
	
	messageText := (self newPharagraphElement) text: self messageModel parsedContent.

	self addChild: messageText 