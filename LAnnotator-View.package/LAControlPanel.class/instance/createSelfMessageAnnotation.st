initialization
createSelfMessageAnnotation
	| cont nextButton |
	nextButton := LAButtonElement new.  
	nextButton label: 'self-link'.
	nextButton
		when: BlClickEvent do: [
			self fireEvent: (LAUSelfLinkingEvent new)
			].
	
	cont := LALayoutBoxElement horizontal
		background: (Color gray alpha: 0.2);
		yourself.
	
	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LABasicLabelElement text: '[S]') ; 
							yourself).
							
	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LABasicLabelElement text: 'Self-message linking') ; 
							alignLeft;
							width: 150;
							yourself).
	cont addChild: nextButton.
	
	self addChild: cont