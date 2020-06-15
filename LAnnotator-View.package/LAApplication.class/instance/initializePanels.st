initialization
initializePanels
	| infoPanelCont |
	listView := LAMessageListElement new.
	listView padding: (BlInsets all: 5).
	"listView app: self."
	
	panelMessages := LAPanelElement new.
	infoPanelCont := LAPanelElement new 
							layout: (BlLinearLayout vertical); 
							yourself.
	
	controlPanel := LAControlPanel new.
	infoPanel := LAInfoPanel new.
	scrollListView := listView asScrollableElement.

	"messagelist"
	panelMessages look:  BrGlamorousWithHorizontalResizerLook.
	"panelMessages padding: (BlInsets all: 20)."
	panelMessages constraintsDo: [ :c | c minWidth: 700. ].
	panelMessages addChild: scrollListView. 
	
	"information panel actions"
	infoPanelCont addChild: controlPanel.
	infoPanelCont addChild: infoPanel.
	
	self addChild: panelMessages.
	self addChild: infoPanelCont.
	
	"panelInfo look:  BrGlamorousWithHorizontalResizerLook."
	