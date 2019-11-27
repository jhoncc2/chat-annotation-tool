initialization
createUntanglingModeControl
	| cont |
	untanglingModeButton := LASwitchButtonElement new.  
	untanglingModeButton viewModel label: 'Create'.
	untanglingModeButton	
		whenActiveDo: [ 
			untanglingModeButton viewModel label: 'Create'.
			self fireEvent: (LAUEventSwitchMode new createMode; yourself)
			];
		whenDeactivateDo: [ 
			untanglingModeButton viewModel label: 'Remove'.
			self fireEvent: (LAUEventSwitchMode new deleteMode; yourself)
			].
	
	cont := LALayoutBoxElement horizontal
		background: (Color gray alpha: 0.2);
		yourself.
	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LABasicLabelElement text: '[R]') ;
							yourself).
	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LABasicLabelElement text: 'Continuous annotation') ; 
							alignLeft;
							width: 150;
							yourself).
	cont addChild: untanglingModeButton.

	self addChild: cont