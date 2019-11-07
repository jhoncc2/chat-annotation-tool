initialization
initializeShape
	| tmp2 |
	tmp2 := self.
	tmp2
		curvatureFraction: 0.7;
		border: (BlBorder paint: (Color blue alpha: 0.5) width: 1);
		width: 1;
		fromAnchor: (BlAbsolutePositionAnchor position: 75 @ 140)