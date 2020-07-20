initialization
initializeHeader
	| header |
	indexLabel :=  LALabelElement new text: self index.
	
	header := LALayoutBoxElement new 
		"background: (Color gray alpha: 0.1);"
		"constraintsDo: [ :c | c horizontal matchParent ];"
		addChild: self similarityBar;
		addChild: self thumbnail;
		addChild: indexLabel;
		addChild: self username; 
	 	addChild: self datetime; 
		horizontalLayout; 
		yourself.
	self addChild: header 