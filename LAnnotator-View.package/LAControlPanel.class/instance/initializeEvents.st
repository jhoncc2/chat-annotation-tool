initialization
initializeEvents
	super initializeEvents.
	
	"unlinking mode"
	self onAction: LAAnnEnableLinking do: [ untanglingModeButton viewModel deactivate ].
	self onAction: LAAnnEnableUnlinking do: [ untanglingModeButton viewModel activate ].
	
	"anchor mode"
	self onAction: LAAnnEnableAnchor do: [ anchorButton viewModel activate ].
	self onAction: LAAnnDisableAnchor do: [ anchorButton viewModel deactivate ]
	