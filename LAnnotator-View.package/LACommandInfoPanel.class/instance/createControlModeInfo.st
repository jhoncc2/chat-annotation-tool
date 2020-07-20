initialization
createControlModeInfo
	| cont |
	controlModeButton := LASwitchableInfoElement new.  
	controlModeButton deactivateText: 'Pressed' activateText: 'Unpressed'.    
	controlModeButton deactivate.
	
	cont := LALayoutBoxElement horizontal
		background: (Color gray alpha: 0.2);
		margin: (BlInsets all: 2);
		yourself.
	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LALabelElement text: '[Shift]') ;
							yourself).
	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LALabelElement text: 'alternative-controls') ; 
							alignLeft;
							width: 150;
							yourself).
	cont addChild: controlModeButton.

	self addChild: cont