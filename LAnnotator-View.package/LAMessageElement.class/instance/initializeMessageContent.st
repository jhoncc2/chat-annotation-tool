initialize
initializeMessageContent
	| messageText |
	
	messageText := LAParagraphElement new text: self messageModel parsedContent.

	self addChild: messageText 