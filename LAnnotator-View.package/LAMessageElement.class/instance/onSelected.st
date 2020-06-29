event-handling
onSelected
	selected := true.

	self border: (BlBorder builder 
					capRound;
					paint: (Color black); 
					width: 3;
					build).
	"self background: self selectedColor"