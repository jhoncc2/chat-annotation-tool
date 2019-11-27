initialization
switchUntaglingMode
	untanglingModeButton viewModel isActivated
		ifFalse: [untanglingModeButton viewModel activate]
		ifTrue: [untanglingModeButton viewModel deactivate]. 
	