event-handling
onStrongSelected
	selected := true.
	strongSelected:=true.
	self hightlightEdgeLinks.
	self hightlightMentions: true.
	self background: self strongSelectedColor 