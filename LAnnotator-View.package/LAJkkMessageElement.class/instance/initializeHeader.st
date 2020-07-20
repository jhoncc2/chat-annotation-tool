initialization
initializeHeader
	| username datetime header thumb |
	indexLabel :=  LALabelElement new text: self index.
	thumb := LAUserThumbnail new thumbstring: (self messageModel username copyFrom: 2 to: self messageModel username size - 1).	
	username :=  LALabelElement new text: self messageModel username.
	datetime :=  LALabelElement new text: self messageModel prettyDate.
	
	header := LALayoutBoxElement new 
		"background: (Color red alpha: 1);"
		"constraintsDo: [ :c | c horizontal matchParent ];"
		addChild: thumb;
		addChild: indexLabel;
		addChild: username; 
	 	addChild: datetime; 
		horizontalLayout; 
		yourself.
	self addChild: header 