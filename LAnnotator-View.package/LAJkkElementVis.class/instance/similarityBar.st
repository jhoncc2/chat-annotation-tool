initialization
similarityBar

	| panel |
	textSimilarity := LABar newAbsoluteSize: 100@5 color: Color red.
	timeSimilarity := LABar newAbsoluteSize: 100@5 color: Color yellow.
	commSimilarity := LABar newAbsoluteSize: 100@5 color: Color blue.
	
	panel := LAPanelElement new 
		layout: (BlLinearLayout vertical cellSpacing: 1; yourself);
		padding: (BlInsets all: 0);
		margin: (BlInsets all: 0);
		background: (Color white alpha: 0.1);
		constraintsDo: [ :c | 
			c horizontal fitContent.
			c vertical fitContent ].
	panel addChild: textSimilarity.
	panel addChild: timeSimilarity.
	panel addChild: commSimilarity.
	^ panel.