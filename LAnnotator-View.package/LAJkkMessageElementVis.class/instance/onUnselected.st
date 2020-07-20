initialization
onUnselected
	selected := false.
	strongSelected := false.
	
	self hightlightMentions: false.
	self elementArcs do: [:e | e unhighlight.].
	self border: BlBorder empty.
	self background: self groupedColor  