initialization
createInfoTextRelatedMsgs
	| cont  |
	
	cont := LALayoutBoxElement horizontal
		background: (Color gray alpha: 0.2);
		yourself.
		
	cont addChild: (LALayoutBoxElement horizontal 
							background: (Color yellow alpha: 0.7) ;
							alignLeft;
							width: 25;
							height: 20;
							yourself).

	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LABasicLabelElement text: 'Messages connected to') ; 
							alignLeft;
							width: 150;
							yourself).
	cont margin: (BlInsets all: 3).
	self addChild: cont