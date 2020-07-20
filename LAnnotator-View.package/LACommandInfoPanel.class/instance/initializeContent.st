initialization
initializeContent
	super initializeContent.
	self createInfoTextSelectMsgs.
	self createInfoTextLinkToMsgs.
	self createInfoTextRemoveMsgs.
	self createSimilitudData.
	self addChild: (LALayoutBoxElement horizontal 
							alignLeft;
							width: 100;
							height: 10;
							yourself).
	self createControlModeInfo.
	self createUntanglingModeControl.
	self createUnlinkAllFromMessageButton.
	self createUntanglingContinuousAnnotation.
	"self createMoveUpAnnotation.
	self createMoveDownAnnotation."
	"self createUntanglingAnchorAnnotation."
	"self createSelfMessageAnnotation."