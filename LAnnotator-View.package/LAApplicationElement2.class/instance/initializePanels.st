initialization
initializePanels
	
	listView := LAMessageListElement new.
	listView padding: (BlInsets all: 5).
	
	panelMessages := LAPanelElement new.
	
	controlPanel := LAControlPanel new.
	controlPanel layout: (BlFlowLayout horizontal).
	controlPanel constraintsDo: [ :c | c vertical fitContent. ].
	
	infoPanel := LAInfoPanel new.
	infoPanel layout: (BlLinearLayout vertical).
	infoPanel constraintsDo: [ :c | c vertical fitContent. ].

	"messagelist"
	panelMessages look:  BrGlamorousWithHorizontalResizerLook.
	"panelMessages padding: (BlInsets all: 20)."
	panelMessages constraintsDo: [ :c | c vertical matchParent. ].
	panelMessages addChild: listView asScrollableElement. 
	
	self addChild: controlPanel.
	self addChild: panelMessages.
	self addChild: infoPanel.
	
	"panelInfo look:  BrGlamorousWithHorizontalResizerLook."
	