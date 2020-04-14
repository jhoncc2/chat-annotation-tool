create
newHorizontal
	^ self basicNew initialize;
		layout: (BlLinearLayout horizontal cellSpacing: 5; yourself);
		yourself.