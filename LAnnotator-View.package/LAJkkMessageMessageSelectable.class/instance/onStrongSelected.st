initialization
onStrongSelected
	selected := true.
	strongSelected:=true.
	"self hightlightEdgeLinks."
	self hightlightConnectedMessages: true. 
	"self hightlightMentions: true."
	self background: self strongSelectedColor 