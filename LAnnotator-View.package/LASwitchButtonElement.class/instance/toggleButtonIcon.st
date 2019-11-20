initialization
toggleButtonIcon
	^ toggleButtonIcon ifNil: [toggleButtonIcon := BlElement new
		size: 6@6;
		background: Color green;
		geometry: BlEllipse new;
		margin: (BlInsets all: 3)]