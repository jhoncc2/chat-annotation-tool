initialization
initializeLayout
	super initializeLayout.
	textView := BrLabel new
				look: (BrGlamorousLabelLook new foreground: Color white);
				text: 'LAN' asRopedText bold;
				yourself.
	self
		layout: (BlLinearLayout horizontal alignCenter; yourself);
		geometry: BlCircle new;
		width: 30;
		height: 30;
		background: (Color red alpha: 0.4).
		self addChild: textView