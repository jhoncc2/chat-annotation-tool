initialization
createInfoTextRemoveMsgs
	| cont  |
	
	cont := LALayoutBoxElement horizontal
		background: (Color gray alpha: 0.2);
		yourself.
		
	cont addChild: (LALayoutBoxElement horizontal 
							background: (Color darkGray alpha: 0.7);
							alignLeft;
							width: 25;
							height: 20;
							yourself).

	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LABasicLabelElement text: 'remove link to') ; 
							alignLeft;
							width: 120;
							yourself).
	cont margin: (BlInsets all: 3).
								
	self addChild: cont