initialization
createUntanglingContinuousAnnotation
	| cont nextButton |
	nextButton := LAButtonElement new.  
	nextButton label: 'Link'.
	nextButton
		when: BlClickEvent do: [
			"self fireEvent: (LAUEventAnnotateNext new)"
			self announceAction: LAAnnDoLink new.
			LAAnnButtonPressed key: #DoLinkButton
			].
	
	cont := LALayoutBoxElement horizontal
		background: (Color gray alpha: 0.2);
		margin: (BlInsets all: 2);
		yourself.
	
	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LALabelElement text: '[D]') ; 
							yourself).
							
	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LALabelElement text: 'Link') ; 
							alignLeft;
							width: 100;
							yourself).
	cont addChild: nextButton.
	
	self addChild: cont