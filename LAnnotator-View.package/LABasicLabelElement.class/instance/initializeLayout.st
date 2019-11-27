initialization
initializeLayout 
	self look: (BrGlamorousLabelLook new).
	self constraintsDo: [ :e | e horizontal fitContent ]