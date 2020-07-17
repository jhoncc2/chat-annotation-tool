initialization
createSkipMessageButton
	| cont nextButton |
	nextButton := LAButtonElement new.  
	nextButton label: 'skip'.
	nextButton when: BlClickEvent do: [
			self announceAction: LAAnnMoveAnchoredMessage down
			].
	
	cont := LALayoutBoxElement horizontal
		background: (Color gray alpha: 0.2);
		yourself.

	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LABasicLabelElement text: 'Skip selected message') ; 
							alignLeft;
							width: 150;
							yourself).
	cont addChild: nextButton.
	
	self addChild: cont