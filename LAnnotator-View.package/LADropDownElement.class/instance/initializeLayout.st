initialization
initializeLayout 
	self initializeList.
	self
		layout: BlLinearLayout horizontal;
		constraintsDo: [ :c | 
			c horizontal fitContent.
			c vertical fitContent ];
		"in: [ :aDropdown | aDropdown toggle: [ self laTargetElement action: [ aDropdown toggle ] ] ];"
		popup: [ elementList ];
		look: (BrDropdownExamples new roundLook)
	