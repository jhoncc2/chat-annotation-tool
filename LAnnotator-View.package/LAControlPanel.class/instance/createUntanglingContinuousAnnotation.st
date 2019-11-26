initialization
createUntanglingContinuousAnnotation
	| cont nextButton |
	nextButton := LASwitchButtonElement new.  
	nextButton viewModel label: 'Create'.
	nextButton	
		whenActiveDo: [ 
			self fireEvent: (LAUEventAnnotateNext new)
			];
		whenDeactivateDo: [ 
			self fireEvent: (LAUEventAnnotateNext new)
			].
	
	cont := LALayoutBoxElement horizontal
		background: (Color gray alpha: 0.2);
		yourself.
	
	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LABasicLabelElement text: '[C]') ; 
							yourself).
							
	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LABasicLabelElement text: 'Continuous annotation') ; 
							yourself).
	cont addChild: nextButton.
	
	self addChild: cont