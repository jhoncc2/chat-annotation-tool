event-handling
onMouseClick
	self selected
		ifTrue: [ 
			Transcript show: 'unselect.'; cr.
			self parent onMessageUnselected: self.
		] ifFalse: [ 
			Transcript show: 'select.'; cr.
			self parent onMessageSelected: self.
		]