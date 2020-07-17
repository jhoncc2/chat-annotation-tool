initialization
initializeMessageContent
	messagePharagraph := self newPharagraphElement  
		text: self messageModel parsedContent;
		background: (Color gray alpha: 0.1);
		yourself. 
	messagePharagraph margin: (BlInsets all: 5).
	self addChild: messagePharagraph.