initialization
toggleButton
	<gtExample>

	^ BrButton new
		look: BrGlamorousButtonWithLabelLook;
		padding: (BlInsets top: 6 right: 8 bottom: 6 left: 15);
		label: 'Instance';
		icon: (BlElement new
			size: 8@8;
			geometry: (BlPolygon vertices: {(0 @ 0). (8 @ 0). ((8 / 2) rounded @ 8)});
			background: Color lightGray;
			margin: (BlInsets left: 12 right: 10);
			constraintsDo: [ :c | c linear vertical alignCenter ])