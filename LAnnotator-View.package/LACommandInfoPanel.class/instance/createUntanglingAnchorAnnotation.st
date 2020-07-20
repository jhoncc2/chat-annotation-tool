initialization
createUntanglingAnchorAnnotation
	| cont |
	anchorButton := LASwitchableInfoElement new.  
	anchorButton deactivate.

	cont := LALayoutBoxElement horizontal
		background: (Color gray alpha: 0.2);
		margin: (BlInsets all: 2);
		yourself.
	
	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LALabelElement text: '[A]') ; 
							yourself).
							
	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LALabelElement text: 'Anchor Message') ; 
							alignLeft;
							width: 150;
							yourself).
	cont addChild: anchorButton.
	
	self addChild: cont