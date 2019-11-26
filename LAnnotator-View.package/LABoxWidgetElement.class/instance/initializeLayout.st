initialization
initializeLayout
	super initializeLayout.
	self
		layout: BlLinearLayout horizontal;
		"border: self boxBorder;"
		geometry: (BlRectangle cornerRadius: 2);
		"size: 200@30;"
		"background: (Color gray alpha: 0.1);"
		padding: (BlInsets top: 2 left: 2 bottom: 2 right: 2).
		