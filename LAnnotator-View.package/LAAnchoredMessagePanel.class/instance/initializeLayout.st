initialization
initializeLayout
	super initializeLayout.
	self layout: (BlLinearLayout vertical cellSpacing: 5; yourself).
	self background: (Color gray alpha: 0.1).
	jumpButton := LAButtonElement new.  
	jumpButton label: 'Jump'.
	jumpButton
		when: BlClickEvent do: [
			self announceAction: (LAAnnButtonPressed key: #Jump).
			self announceAction: LAAnnOnAnchoredVisibility visible.
			self announceAction: LAAnnScrollToAnchoredMessage new.
			self announceAction: LAAnnMoveHighlightedToAnchored new.
			].
	