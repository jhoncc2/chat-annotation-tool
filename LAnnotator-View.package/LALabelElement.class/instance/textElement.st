accessing
textElement 
	^ textElement ifNil: [ 
		textElement :=  BrLabel new.
		textElement look: BrGlamorousLabelLook new
	]