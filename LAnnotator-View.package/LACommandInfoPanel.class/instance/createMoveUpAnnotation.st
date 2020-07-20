initialization
createMoveUpAnnotation
	| cont |
	moveUpButton := LASwitchableInfoElement new.
	moveUpButton deactivateText: 'Pressed' activateText: 'Unpressed'.    
	moveUpButton deactivate.
	
	cont := LALayoutBoxElement horizontal
		background: (Color gray alpha: 0.2);
		margin: (BlInsets all: 2);
		yourself.
	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LALabelElement text: '[Up]') ;
							yourself).
	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LALabelElement text: 'Move up') ; 
							alignLeft;
							width: 80;
							yourself).
	"cont addChild: untanglingModeButton."

	self addChild: cont