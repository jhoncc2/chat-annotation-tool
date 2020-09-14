initialization
initializeHeader
	| username datetime header thumb |
	indexLabel :=  LALabelElement new text: self index.	
	username :=  LALabelElement new text: self messageModel username.
	datetime :=  LALabelElement new text: self messageModel prettyDate.
	
	header := LALayoutBoxElement new 
		"background: (Color red alpha: 1);"
		border: (BlBorder paint: (Color blue alpha: 0.2) width: 1);
		"constraintsDo: [ :c | c horizontal matchParent ];"
		addChild: indexLabel;
		addChild: username; 
	 	addChild: datetime; 
		horizontalLayout; 
		yourself.
	self addChild: header 