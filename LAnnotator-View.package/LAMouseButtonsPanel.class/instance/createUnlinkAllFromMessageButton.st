initialization
createUnlinkAllFromMessageButton
	| cont nextButton |
	nextButton := LAButtonElement new.  
	nextButton label: 'remove-all-links [U]'.
	nextButton when: BlClickEvent do: [
			self announceAction: LAAnnRemoveAllLinksFromAnchor new.
			LAAnnButtonPressed key: #RemoveAllLinks
			].
	
	cont := LALayoutBoxElement horizontal
		background: (Color gray alpha: 0.2);
		yourself.

	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LABasicLabelElement text: 'Remove all links from selected message') ; 
							alignLeft;
							width: 250;
							yourself).
	cont addChild: nextButton.
	cont margin: (BlInsets left: 5).
	
	self addChild: cont