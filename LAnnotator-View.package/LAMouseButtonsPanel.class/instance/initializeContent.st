initialization
initializeContent
	super initializeContent.
	"self createUntanglingAnchorAnnotation."
	self createUnlinkAllFromMessageButton.
	self createSkipMessageButton.
	self createInfoTextSelectMsgs.
	self createInfoTextLinkToMsgs.
	