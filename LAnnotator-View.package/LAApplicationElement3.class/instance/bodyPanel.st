panels
bodyPanel
	listView := LAMessageListElement new.
	listView padding: (BlInsets all: 3).
	listView app: self.
	
	"messagelist"
	panelMessages := LAPanelElement new.
	panelMessages look:  BrGlamorousWithHorizontalResizerLook.
	panelMessages constraintsDo: [ :c | c vertical matchParent. ].
	panelMessages addChild: listView asScrollableElement. 
	
	^ panelMessages 
	