initialization
initializeLayout
	super initializeLayout.
	self
		layout: BlLinearLayout  horizontal;
		border: self boxBorder;
		geometry: (BlRectangle cornerRadius: 2);
		"size: 200@30;"
		background: (Color gray alpha: 0.2);
		padding: (BlInsets top: 5 left: 5 bottom: 5 right: 5)
		