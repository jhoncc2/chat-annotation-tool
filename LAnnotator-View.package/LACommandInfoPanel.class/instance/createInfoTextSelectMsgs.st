initialization
createInfoTextSelectMsgs
	| cont  |
	
	cont := LALayoutBoxElement horizontal
		background: (Color gray alpha: 0.2);
		margin: (BlInsets all: 2);
		yourself.
		
	cont addChild: (LALayoutBoxElement horizontal 
							background: (Color fromHexString: #'29a19c') ;
							alignLeft;
							width: 25;
							height: 20;
							yourself).

	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LALabelElement text: 'Message to link') ; 
							alignLeft;
							width: 120;
							yourself).
	
	self addChild: cont