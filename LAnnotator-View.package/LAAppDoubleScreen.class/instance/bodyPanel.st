panels
bodyPanel
	listView := LAMessageListElement new.
	listView padding: (BlInsets all: 3).
	
	listViewB := LAMessageListElement new.
	listViewB padding: (BlInsets all: 3).
	
	"messagelist"
	panelMessages := LAPanelElement newHorizontal.
	panelMessages look:  BrGlamorousWithHorizontalResizerLook + BrGlamorousWithVerticalResizerLook.
	panelMessages constraintsDo: [ :c | c vertical matchParent. ].
	panelMessages addChild: listView asScrollableElement. 
	panelMessages addChild: listViewB asScrollableElement. 	
	^ panelMessages 
	