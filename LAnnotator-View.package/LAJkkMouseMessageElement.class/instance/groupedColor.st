initialization
groupedColor
	^ self annotated 
		ifTrue: [ 
			"(self messageElementRelations anySatisfy: [ :e | e strongSelected ] ) 
				ifTrue: [ Color yellow alpha: 0.7 ]
				ifFalse: [ Color yellow alpha: 0.2 ]"
			Color yellow alpha: 0.2
			]
		ifFalse: [ self unselectedColor ]