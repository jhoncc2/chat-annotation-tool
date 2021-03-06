initialization
createSelfMessageAnnotation
	| cont nextButton |
	nextButton := LASwitchableInfoElement new. 
	nextButton deactivateText: 'Unpressed' activateText: 'Pressed'.    
	nextButton deactivate.
	
	cont := LALayoutBoxElement horizontal
		background: (Color gray alpha: 0.2);
		margin: (BlInsets all: 2);
		yourself.
	
	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LALabelElement text: '[S]') ; 
							yourself).
							
	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LALabelElement text: 'Self-message linking') ; 
							alignLeft;
							width: 150;
							yourself).
	cont addChild: nextButton.
	
	self addChild: cont