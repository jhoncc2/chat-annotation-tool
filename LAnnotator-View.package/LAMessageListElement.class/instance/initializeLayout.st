initialization
initializeLayout
	| tmp2 |
	tmp2 := BlLinearLayout vertical.
	tmp2 cellSpacing: 1.
	self
		layout: tmp2 yourself;
		padding: (BlInsets all: 10);
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical fitContent ]