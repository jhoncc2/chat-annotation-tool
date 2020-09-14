initialization
onUnselected
	selected := false.
	strongSelected ifTrue: [
		strongSelected := false.
		self hightlightMentions: false.
		self hightlightConnectedMessages: false. 
	].
	
	self elementArcs do: [:e | e unhighlight.].
	self border: BlBorder empty.
	self background: self groupedColor  