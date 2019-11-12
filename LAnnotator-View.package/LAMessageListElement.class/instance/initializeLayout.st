initialization
initializeLayout
	| tmp2 |
	tmp2 := BlLinearLayout vertical.
	tmp2 cellSpacing: 10.
	self
		layout: tmp2 yourself;
		padding: (BlInsets all: 20);
		width: 600;
		constraintsDo: [ :c | 
			"c horizontal fitContent."
			c vertical fitContent ]