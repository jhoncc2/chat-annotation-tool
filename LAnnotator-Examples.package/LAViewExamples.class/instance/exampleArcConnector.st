examples
exampleArcConnector
	<gtExample>
	| tmp2 |
	tmp2 := LAArcConnectorElement new.
	tmp2
		fromAnchor: (BlAbsolutePositionAnchor position: 75 @ 75);
		toAnchor: (BlAbsolutePositionAnchor position: 120 @ 140).
	^ tmp2 yourself