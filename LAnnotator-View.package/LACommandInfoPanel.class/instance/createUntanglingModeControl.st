initialization
createUntanglingModeControl
	| cont |
	untanglingModeButton := LASwitchableInfoElement new.  
	untanglingModeButton deactivateText: 'Unpressed' activateText: 'Pressed'.    
	untanglingModeButton deactivate.
	
	cont := LALayoutBoxElement horizontal
		background: (Color gray alpha: 0.2);
		yourself.
	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LABasicLabelElement text: '[Z]') ;
							yourself).
	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LABasicLabelElement text: 'Switch unlink mode') ; 
							alignLeft;
							width: 150;
							yourself).
	cont addChild: untanglingModeButton.

	self addChild: cont