initialization
createMessagesNumberLabel
	| text |
	
	text := 'Total Messages: ' ,  controller messageModels size asString.
	self addChild: (LALayoutBoxElement horizontal 
							addChild: (LABasicLabelElement text: text);
							background: (Color gray alpha: 0.2);
							constraintsDo: [ :e | e horizontal matchParent ]; 
							alignLeft;
							yourself).
	