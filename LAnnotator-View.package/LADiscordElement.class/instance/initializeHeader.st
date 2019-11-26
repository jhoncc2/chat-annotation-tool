initialize
initializeHeader
	| username datetime header thumb |
	indexLabel :=  LALabelElement new text: self index.
	thumb := LAUserThumbnail new thumbstring: self messageModel username.	
	username :=  LALabelElement new text: self messageModel author username.
	datetime :=  LALabelElement new text: self messageModel prettyDate.
	
	header := LALayoutBoxElement new 
		"background: (Color gray alpha: 0.1);"
		"constraintsDo: [ :c | c horizontal matchParent ];"
		addChild: thumb;
		addChild: indexLabel;
		addChild: username; 
	 	addChild: datetime; 
		horizontalLayout; 
		yourself.
	self addChild: header 