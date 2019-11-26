initialization
initializePanels
	listView := LAMessageListElement new.
	listView padding: (BlInsets bottom: 150).
	
	panelMessages := LAPanelElement new.
	panelInfo := LAControlPanel new.
	
	"messagelist"
	panelMessages look:  BrGlamorousWithHorizontalResizerLook.
	panelMessages constraintsDo: [ :c | c minWidth: 700. ].
	panelMessages addChild: listView asScrollableElement. 
	
	"information panel actions"
	
	"panelInfo look:  BrGlamorousWithHorizontalResizerLook."
	