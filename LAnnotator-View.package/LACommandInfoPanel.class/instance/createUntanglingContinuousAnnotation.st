initialization
createUntanglingContinuousAnnotation
	| cont nextButton |
	nextButton := LAButtonElement new.  
	nextButton label: 'Link'.
	nextButton
		when: BlClickEvent do: [
			"self fireEvent: (LAUEventAnnotateNext new)"
			self announceAction: LAAnnLinkAndFocusNext new
			].
	
	cont := LALayoutBoxElement horizontal
		background: (Color gray alpha: 0.2);
		margin: (BlInsets all: 0.3);
		yourself.
	
	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LABasicLabelElement text: '[D]') ; 
							yourself).
							
	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LABasicLabelElement text: 'Link') ; 
							alignLeft;
							width: 150;
							yourself).
	"cont addChild: nextButton."
	
	self addChild: cont