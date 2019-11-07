event-handling
onMouseClick
	self selected
		ifTrue: [ self parent onMessageUnselected: self.
			selected := false ]
		ifFalse: [ self parent onMessageSelected: self.
			selected := true ]