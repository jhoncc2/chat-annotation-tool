initialization
createInfoTextLinkToMsgs
	| cont  |
	
	cont := LALayoutBoxElement horizontal
		background: (Color gray alpha: 0.2);
		yourself.
		
	cont addChild: (LALayoutBoxElement horizontal 
							border: (BlBorder builder 
									paint: (Color black); width: 3; build);
							alignLeft;
							width: 25;
							height: 20;
							yourself).

	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LABasicLabelElement text: 'Link to') ; 
							alignLeft;
							width: 120;
							yourself).
								
	self addChild: cont