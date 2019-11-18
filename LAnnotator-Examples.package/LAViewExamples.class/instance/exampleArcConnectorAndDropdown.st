examples
exampleArcConnectorAndDropdown
	<gtExample>
	| arc dropdown el button |
	el := BlElement new.
	el width: 200; height: 300.

	button := BrButton new
		background: Color orange;
		label: ('3' asRopedText fontSize: 15; foreground: Color white; bold);
		layout: BlLinearLayout horizontal;
		constraintsDo: [ :c |
			c horizontal fitContent.
			c vertical fitContent ];
		look: BrTextLabelLook;
		padding: (BlInsets all: 7);
		yourself.


	arc := LAArcConnectorElement new
		fromAnchor: (BlAbsolutePositionAnchor position: 120 @ 75);
		toAnchor: (BlAbsolutePositionAnchor position: 120 @ 140);
		yourself.

	dropdown := LADropDownElement new
			"toggle: [ button action: [ dropdown toogle. ] ];"
			optionList: {('first' -> 'first'). ('first' -> 'first')}; 
			yourself.

	el addChild: arc.
	el addChild: dropdown.

	arc when: BlClickEvent do: [ :anEvent |
		dropdown relocate: anEvent position.
		Transcript show: ' on Click ' ; cr.
		dropdown toggle.
		].
	el.

	