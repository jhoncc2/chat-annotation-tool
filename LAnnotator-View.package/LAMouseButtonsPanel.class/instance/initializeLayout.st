initialization
initializeLayout
	super initializeLayout.
	
	self layout: (BlLinearLayout horizontal cellSpacing: 5; yourself).
	"self layout: (BlGridLayout new columnCount: 2)."
	