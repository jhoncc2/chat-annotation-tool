initialization
handleClickEvent: event
	self active ifTrue: [
		self deactivate. 
	] ifFalse: [
		self activate
	] 