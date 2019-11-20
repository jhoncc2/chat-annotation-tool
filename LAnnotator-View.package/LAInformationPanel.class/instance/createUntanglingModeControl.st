initialization
createUntanglingModeControl
	| untMode cont |
	untanglingModeButton := LASwitchButtonElement new.  
	
	untanglingModeButton viewModel label: 'Create'.
	untanglingModeButton	
		whenActiveDo: [ 
			untanglingModeButton viewModel label: 'Create'.
			self fireEvent: (LAUntanglingSwitchModeEvent new createMode; yourself)
			];
		whenDeactivateDo: [ 
			untanglingModeButton viewModel label: 'Remove'.
			self fireEvent: (LAUntanglingSwitchModeEvent new deleteMode; yourself)
			].
		
	untMode := LALayoutBoxElement horizontal. 
	untMode addChild: (LABasicLabelElement text: 'Untangling mode').
	untMode addChild: untanglingModeButton.
	
	cont := LALayoutBoxElement horizontal.
	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LABasicLabelElement text: '[R]') ; 
							yourself).
	cont addChild: untMode.
	
	self addChild: cont