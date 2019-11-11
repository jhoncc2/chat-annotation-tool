initialize
initialize
	super initialize.
	self initializeLayout.
	isMouseOver := false.
	selected := false.
	visited := false.
	messageElementRelations := OrderedCollection empty.