initialization
similarityBar

	| panel |
	timeSimilarity := LABar newAbsoluteSize: 8@20 color: Color red.
	textSimilarity := LABar newAbsoluteSize: 8@20 color: Color green.
	commSimilarity := LABar newAbsoluteSize: 8@20 color: Color blue.
	
	panel := LAPanelElement new 
		layout: (BlLinearLayout horizontal alignTopCenter; cellSpacing: 1; yourself);
		padding: (BlInsets all: 0);
		margin: (BlInsets all: 0);
		background: (Color white alpha: 0.1);
		constraintsDo: [ :c | 
			c horizontal fitContent.
			c vertical fitContent ].
	panel addChild: timeSimilarity.
	panel addChild: textSimilarity.
	panel addChild: commSimilarity.
	^ panel.