initialize
initializeLayout
	| lay |
	super initializeLayout.
	lay := BlLinearLayout vertical
		cellSpacing: 1; yourself.
	self
		layout: lay yourself;
		viewModel:
			(BrInteractiveModel
				withAll:
					{BrLayoutHorizontalResizerModel fitContent.
					BrLayoutVerticalResizerModel fitContent});
		background: self unselectedColor;
		padding: (BlInsets left: 5 right: 5);
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical fitContent ]
	