initialization
initializeLayout
	| tmp2 |
	tmp2 := BlLinearLayout vertical.
	tmp2 cellSpacing: 10.
	self
		layout: tmp2 yourself;
		padding: (BlInsets all: 20);
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical fitContent ]