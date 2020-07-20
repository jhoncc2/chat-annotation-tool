initialization
initializeContent
	super initializeContent.
	"self createUntanglingAnchorAnnotation."
	self createInfoTextSelectMsgs.
	self createInfoTextLinkToMsgs.
	self createInfoTextRemoveMsgs.
	self createInfoTextAnnotatedMsgs.
	self createInfoTextRelatedMsgs.
	self addChild: (LALayoutBoxElement horizontal 
							alignLeft;
							width: 50;
							height: 20;
							yourself).
	
	self createUnlinkAllFromMessageButton.
	self createSkipMessageButton.
	