initialization
createMoveDownAnnotation
	| cont |
	moveDownButton := LASwitchableInfoElement new.
	moveDownButton deactivateText: 'Unpressed' activateText: 'Pressed'.    
	moveDownButton deactivate.
	
	cont := LALayoutBoxElement horizontal
		background: (Color gray alpha: 0.2);
		margin: (BlInsets all: 0.3);
		yourself.
	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LABasicLabelElement text: '[Down]') ;
							yourself).
	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LABasicLabelElement text: 'Move down') ; 
							alignLeft;
							width: 80;
							yourself).
	"cont addChild: untanglingModeButton."

	self addChild: cont