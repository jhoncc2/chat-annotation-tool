initialization
initializeMessageContent
	| messageText |
	
	messageText := LAParagraphElement new 
		text: self messageModel parsedContent;
		background: (Color gray alpha: 0.1);
		yourself. 
	self addChild: messageText.
	
	