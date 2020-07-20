initialization
groupedColor
	^ self annotated 
		ifTrue: [ Color yellow alpha: 0.2 ]
		ifFalse: [ self unselectedColor ]