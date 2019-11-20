initialization
initializeContent
	| untMode |
	super initializeContent.
	untanglingModeButton := LASwitchButtonElement new.  
	
	untanglingModeButton viewModel label: 'Create'.
	untanglingModeButton	
		whenActiveDo: [ 
			untanglingModeButton viewModel label: 'Create'.
			self fireEvent: (LAUntanglingSwitchModeEvent new createMode; yourself)
			];
		whenDeactivateDo: [ 
			untanglingModeButton viewModel label: 'Remove'.
			self fireEvent: (LAUntanglingSwitchModeEvent new deleteMode; yourself)
			].
		
	untMode := LALayoutBoxElement horizontal. 
	untMode addChild: (BrLabel new text: 'Untangling mode'; look: (BrGlamorousLabelLook new); yourself).
	untMode addChild: untanglingModeButton.
	
	self addChild: untMode.