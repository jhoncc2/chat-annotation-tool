initialize
initialize
	super initialize.
	self initializeLayout.
	isMouseOver := false.
	strongSelected := false.
	selected := false.
	delSelected := false.
	visited := false.
	messageElementRelations := OrderedCollection empty.
	elementArcs := OrderedCollection empty.