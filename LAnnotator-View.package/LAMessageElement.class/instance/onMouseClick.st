event-handling
onMouseClick
	self deprecated.
	self selected
		ifTrue: [ 
			Transcript show: 'unselect.'; cr.
			self parent  self.
		] ifFalse: [ 
			Transcript show: 'select.'; cr.
			self parent onMessageSelected: self.
		]