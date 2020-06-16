initialization
createControlModeInfo
	| cont |
	controlModeButton := LASwitchableInfoElement new.  
	controlModeButton deactivateText: 'Unpressed' activateText: 'Pressed'.    
	controlModeButton deactivate.
	
	cont := LALayoutBoxElement horizontal
		background: (Color gray alpha: 0.2);
		yourself.
	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LABasicLabelElement text: '[Shift]') ;
							yourself).
	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LABasicLabelElement text: 'alternative-controls') ; 
							alignLeft;
							width: 150;
							yourself).
	cont addChild: controlModeButton.

	self addChild: cont