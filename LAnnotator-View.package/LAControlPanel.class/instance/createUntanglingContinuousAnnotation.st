initialization
createUntanglingContinuousAnnotation
	| cont nextButton |
	nextButton := LAButtonElement new.  
	nextButton label: 'Join'.
	nextButton  
		when: BlClickEvent do: [
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
							alignLeft;
							width: 150;
							yourself).
	cont addChild: nextButton.
	
	self addChild: cont