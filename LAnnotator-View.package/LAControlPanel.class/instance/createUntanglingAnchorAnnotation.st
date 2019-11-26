initialization
createUntanglingAnchorAnnotation
	| cont anchorButton |
	anchorButton := LASwitchButtonElement new.  
	anchorButton viewModel label: 'Create'.
	anchorButton	
		whenActiveDo: [ 
			self fireEvent: (LAUEventSwitchAnchor new)
			];
		whenDeactivateDo: [ 
			self fireEvent: (LAUEventSwitchAnchor new)
			].
	cont := LALayoutBoxElement horizontal
		background: (Color gray alpha: 0.2);
		yourself.
	
	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LABasicLabelElement text: '[A]') ; 
							yourself).
							
	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LABasicLabelElement text: 'Anchor Message') ; 
							yourself).
	cont addChild: anchorButton.
	
	self addChild: cont