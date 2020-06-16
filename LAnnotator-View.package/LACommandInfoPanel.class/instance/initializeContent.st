initialization
initializeContent
	super initializeContent.
	self createControlModeInfo.
	self createUntanglingModeControl.
	self createUntanglingContinuousAnnotation.
	self createMoveUpAnnotation.
	self createMoveDownAnnotation.
	"self createUntanglingAnchorAnnotation."
	"self createSelfMessageAnnotation."