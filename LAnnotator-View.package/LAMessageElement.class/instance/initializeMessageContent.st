initialize
initializeMessageContent
	| messageText |
	messageText := LAParagraphElement new text: self messageModel content.

	self addChild: messageText 