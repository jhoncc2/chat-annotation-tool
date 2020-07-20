initialization
createInfoTextRemoveMsgs
	| cont  |
	
	cont := LALayoutBoxElement horizontal
		background: (Color gray alpha: 0.2);
		margin: (BlInsets all: 2);
		yourself.
		
	cont addChild: (LALayoutBoxElement horizontal 
							background: (Color darkGray alpha: 0.7);
							alignLeft;
							width: 25;
							height: 20;
							yourself).

	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LALabelElement text: 'Remove link to') ; 
							alignLeft;
							width: 120;
							yourself).
	
	self addChild: cont