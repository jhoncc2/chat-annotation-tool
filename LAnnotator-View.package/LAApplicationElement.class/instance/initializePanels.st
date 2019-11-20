initialization
initializePanels
	listView := LAMessageListElement new.
	
	panelMessages := LAPanelElement new.
	panelInfo := LAInformationPanel new.
	
	"messagelist"
	panelMessages look:  BrGlamorousWithHorizontalResizerLook.
	panelMessages addChild: listView asScrollableElement. 
	
	"information panel actions"
	
	"panelInfo look:  BrGlamorousWithHorizontalResizerLook."
	