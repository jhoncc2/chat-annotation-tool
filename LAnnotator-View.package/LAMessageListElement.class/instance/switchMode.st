initialization
switchMode
	Transcript show: 'deleteActive:'; show: self isDeleteActive not; cr. 
	self isDeleteActive 
		ifFalse:[ isDeleteActive := true]
		ifTrue:[ isDeleteActive := false].