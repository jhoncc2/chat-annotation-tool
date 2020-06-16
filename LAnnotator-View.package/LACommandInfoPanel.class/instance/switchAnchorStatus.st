initialization
switchAnchorStatus
	anchorButton viewModel isActivated
		ifFalse: [anchorButton viewModel activate]
		ifTrue: [anchorButton viewModel deactivate]. 
	