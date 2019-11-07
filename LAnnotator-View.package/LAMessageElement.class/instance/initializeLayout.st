initialize
initializeLayout
	| lay |
	lay := BlLinearLayout vertical
		cellSpacing: 5; yourself.
	self
		layout: lay yourself;
		viewModel:
			(BrInteractiveModel
				withAll:
					{BrLayoutHorizontalResizerModel fitContent.
					BrLayoutVerticalResizerModel fitContent});
		background: self unselectedColor;
		padding: (BlInsets all: 5);
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical fitContent ]
	