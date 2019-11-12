event-handling
onMouseDblClick
	^ self
	"selected := false.
	self delSelected
		ifTrue: [ 
			self parent onMessageDelUnselected: self.
		] ifFalse: [ 
			self parent onMessageDelSelected: self.
		]"