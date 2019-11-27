initialization
initializeLayout
	super initializeLayout.
	self layout: (BlLinearLayout vertical cellSpacing: 5; yourself).
	self background: (Color gray alpha: 0.1).