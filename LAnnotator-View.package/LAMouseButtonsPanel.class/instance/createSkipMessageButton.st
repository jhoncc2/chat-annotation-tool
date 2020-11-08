initialization
createSkipMessageButton
	| cont nextButton |
	nextButton := LAButtonElement new.  
	nextButton label: 'skip'.
	nextButton when: BlClickEvent do: [
			self announceAction: LAAnnMoveAnchoredMessage down.
			LAAnnButtonPressed key: #SkipStrongSelectedMessage
			].
	
	cont := LALayoutBoxElement horizontal
		background: (Color gray alpha: 0.2);
		yourself.

	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LABasicLabelElement text: 'Move selected message up[W]/down[S]') ; 
							alignLeft;
							width: 240;
							yourself).
	"cont addChild: nextButton."
	cont margin: (BlInsets left: 4).
	
	self addChild: cont