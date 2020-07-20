initialization
createMoveDownAnnotation
	| cont |
	moveDownButton := LASwitchableInfoElement new.
	moveDownButton deactivateText: 'Pressed' activateText: 'Unpressed'.    
	moveDownButton deactivate.
	
	cont := LALayoutBoxElement horizontal
		background: (Color gray alpha: 0.2);
		margin: (BlInsets all: 2);
		yourself.
	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LALabelElement text: '[Down]') ;
							yourself).
	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LALabelElement text: 'Move down') ; 
							alignLeft;
							width: 80;
							yourself).
	"cont addChild: untanglingModeButton."

	self addChild: cont