initialization
createConversationsNumber
	| text |
	text := 'Total Conversations: ' , controller numberOfConversations asString.
	text := text , ' | Tagged Messages: ' , controller taggedMessages size asString.
	self addChild: (LALayoutBoxElement horizontal 
							addChild: (LABasicLabelElement text: text);
							background: (Color gray alpha: 0.2);
							constraintsDo: [ :e | e horizontal matchParent ];
							alignLeft;
							yourself).
	 