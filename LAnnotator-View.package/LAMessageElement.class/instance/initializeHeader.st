initialize
initializeHeader
	
	| username datetime header |
	username :=  LALabelElement new text: self messageModel author username.
	datetime :=  LALabelElement new text: self messageModel timestamp asDateAndTime asString.
	
	header := LALayoutBoxElement new 
		addChild: username; 
	 	addChild: datetime; 
		horizontalLayout; 
		yourself.
	self addChild: header 