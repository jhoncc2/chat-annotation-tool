initialization
createSimilitudData
	| cont |
	cont := LALayoutBoxElement horizontal
		background: (Color gray alpha: 0.2);
		margin: (BlInsets all: 0.3);
		yourself.
		
	cont addChild: (LABasicLabelElement text: 'Similitud-bar').
	cont addChild: (LABasicLabelElement text: 'Time' color: Color red font: 12).
	cont addChild: (LABasicLabelElement text: 'Text' color: Color green font: 12).
	cont addChild: (LABasicLabelElement text: 'Annotations' color: Color blue font: 12).

	self addChild: cont