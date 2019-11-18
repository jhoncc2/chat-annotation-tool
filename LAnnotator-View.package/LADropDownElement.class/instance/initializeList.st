initialization
initializeList
	elementList := BrSimpleList new.
	elementList
		layout: BlLinearLayout vertical;
		display: {('first'->'first-1'). ('second'->'second-2')}; "define list"
		stencil: [ :each :index |
			BlTextElement new
				text: each key asRopedText;
				constraintsDo: [ :c | c horizontal matchParent ];
				padding: (BlInsets all: 5);
				when: BlClickEvent do: [ :anEvent  |
					anEvent consumed: true.
					elementList selectOne: index ] ];
		when: BrSelectionChanged do: [ :anEvent |
			anEvent selectedDo: [ :anInterval | self inform: 'Selected: ', anInterval asString ].
			anEvent deselectedDo: [ :anInterval | self inform: 'Deselected: ', anInterval asString ] ];
		lookDo: [ :aLook | aLook listElement constraintsDo: [ :c |
			c vertical fitContent.
			c horizontal matchParent.
			c maxHeight: 200 ] ].