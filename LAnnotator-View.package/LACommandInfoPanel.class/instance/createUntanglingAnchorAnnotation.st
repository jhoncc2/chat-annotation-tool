initialization
createUntanglingAnchorAnnotation
	| cont |
	anchorButton := LASwitchableInfoElement new.  
	anchorButton deactivate.

	cont := LALayoutBoxElement horizontal
		background: (Color gray alpha: 0.2);
		yourself.
	
	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LABasicLabelElement text: '[A]') ; 
							yourself).
							
	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LABasicLabelElement text: 'Anchor Message') ; 
							alignLeft;
							width: 150;
							yourself).
	cont addChild: anchorButton.
	
	self addChild: cont