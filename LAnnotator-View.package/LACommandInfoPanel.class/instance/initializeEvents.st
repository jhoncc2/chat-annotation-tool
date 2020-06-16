initialization
initializeEvents
	super initializeEvents.
	
	"unlinking mode"
	self onAction: LAAnnEnableLinking do: [ untanglingModeButton  deactivate ].
	self onAction: LAAnnEnableUnlinking do: [ untanglingModeButton  activate ].
	
	"control mode"
	self onAction: LAAnnEnableControl  do: [ controlModeButton activate ].
	self onAction: LAAnnDisableControl do: [ controlModeButton deactivate ].
	
	
	"anchor mode"
	"self onAction: LAAnnMoveAnchoredMessage do: [ :e | 
		e isDirectionUp ifTrue: [ moveUpButton up activate ] ].
	self onAction: LAAnnMoveHighlightedMessage do: [ :e | 
		e isDirectionUp ifTrue: [ anchorButton  activate ] ]."	