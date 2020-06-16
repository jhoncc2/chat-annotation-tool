initialization
createMoveUpAnnotation
	| cont |
	moveUpButton := LASwitchableInfoElement new.
	moveUpButton deactivateText: 'Unpressed' activateText: 'Pressed'.    
	moveUpButton deactivate.
	
	cont := LALayoutBoxElement horizontal
		background: (Color gray alpha: 0.2);
		yourself.
	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LABasicLabelElement text: '[Up]') ;
							yourself).
	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LABasicLabelElement text: 'Move up') ; 
							alignLeft;
							width: 80;
							yourself).
	"cont addChild: untanglingModeButton."

	self addChild: cont