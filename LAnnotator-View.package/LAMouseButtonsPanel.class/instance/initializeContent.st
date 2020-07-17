initialization
initializeContent
	super initializeContent.
	"self createUntanglingAnchorAnnotation."
	self createInfoTextSelectMsgs.
	self createInfoTextLinkToMsgs.
	self createInfoTextRemoveMsgs.
	self addChild: (LALayoutBoxElement horizontal 
							alignLeft;
							width: 250;
							height: 20;
							yourself).
	
	self createUnlinkAllFromMessageButton.
	self createSkipMessageButton.
	