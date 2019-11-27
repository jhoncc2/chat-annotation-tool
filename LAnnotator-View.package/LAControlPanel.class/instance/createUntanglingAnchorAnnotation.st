initialization
createUntanglingAnchorAnnotation
	| cont |
	anchorButton := LASwitchButtonElement new.  
	anchorButton viewModel label: 'Anchor'.
	anchorButton	
		whenActiveDo: [ 
			anchorButton  viewModel label: 'Anchor'.
			self fireEvent: (LAUEventSwitchAnchor new)
			];
		whenDeactivateDo: [ 
			anchorButton viewModel label: 'Unanchor'.
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
							alignLeft;
							width: 150;
							yourself).
	cont addChild: anchorButton.
	
	self addChild: cont