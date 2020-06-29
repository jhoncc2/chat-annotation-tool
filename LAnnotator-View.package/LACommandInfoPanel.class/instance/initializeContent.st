initialization
initializeContent
	super initializeContent.
	self createSimilitudData.
	self createControlModeInfo.
	self createUntanglingModeControl.
	self createUntanglingContinuousAnnotation.
	self createMoveUpAnnotation.
	self createMoveDownAnnotation.
	"self createUntanglingAnchorAnnotation."
	"self createSelfMessageAnnotation."