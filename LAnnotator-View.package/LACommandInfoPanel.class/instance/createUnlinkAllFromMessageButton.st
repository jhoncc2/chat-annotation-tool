initialization
createUnlinkAllFromMessageButton
	| cont nextButton |
	nextButton := LAButtonElement new.  
	nextButton label: 'remove-all'.
	nextButton when: BlClickEvent do: [
			self announceAction: LAAnnRemoveAllLinksFromAnchor new.
			LAAnnButtonPressed key: #RemoveAllLinks
			].
	
	cont := LALayoutBoxElement horizontal
		background: (Color gray alpha: 0.2);
		margin: (BlInsets all: 2);
		yourself.

	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LALabelElement text: '[W] Remove all links') ; 
							alignLeft;
							width: 130;
							yourself).
	cont addChild: nextButton.
	
	self addChild: cont