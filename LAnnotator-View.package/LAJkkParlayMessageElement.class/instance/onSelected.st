initialization
onSelected
	selected := true.

	self border: (BlBorder builder 
					capRound;
					paint: (Color black); 
					width: 3;
					build).
	strongSelected 
		ifTrue: [ self background: self strongSelectedColor ]
		ifFalse: [ self background: self groupedColor ]
	