initialization
createUntanglingModeControl
	| cont |
	untanglingModeButton := LASwitchableInfoElement new.  
	untanglingModeButton deactivateText: 'Pressed' activateText: 'Unpessed'.    
	untanglingModeButton deactivate.
	
	cont := LALayoutBoxElement horizontal
		background: (Color gray alpha: 0.2);
		margin: (BlInsets all: 2);
		yourself.
	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LALabelElement text: '[Z]') ;
							yourself).
	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LALabelElement text: 'Switch unlink mode') ; 
							alignLeft;
							width: 150;
							yourself).
	cont addChild: untanglingModeButton.

	self addChild: cont