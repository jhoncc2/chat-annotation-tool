initialize
initializeMessageContent
	| messageText |
	
	messageText := self newPharagraphElement 
		text: self messageModel parsedContent;
		background: (Color gray alpha: 0.1);
		yourself. 
	self addChild: messageText.
	self messageModel attachments do: [ :e | 
		e isImage ifTrue: [
			self addChild: (LAImageAttachmentElement new attachment: e; yourself). 
			]
		].

	