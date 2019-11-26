focus
switchAnchorStatus
	anchoredMessage ifFalse: [
		anchoredMessage := true.
		self firstMessageSelected onStrongSelected.
	] ifTrue: [ 
		anchoredMessage := false.
		self firstMessageSelected onSelected.
	]
	