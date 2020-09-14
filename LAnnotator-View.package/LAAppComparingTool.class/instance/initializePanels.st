initialization
initializePanels
	|  padding messageContainer|
	messageContainer := LAPanelElement new.
	messageContainer layout: BlLinearLayout horizontal.
	"messageContainer border: (BlBorder  paint: Color black)."
	messageContainer constraintsDo: [ :c |
		c vertical fitContent.
		c horizontal matchParent.
		].
	padding := 5.
	
	self controllers do: [ :c | 
		|view|
		view := LAComparingViewListElement new.
		view messageClass: self messageClass.
		view padding: (BlInsets all: 5).
		"listView border: (BlBorder paint: Color red)."
		view  controller: c.
			
		"information panel actions"
		messageContainer addChild: view.
		self listViews add: view.
		"panelInfo look:  BrGlamorousWithHorizontalResizerLook."
	]. 
	self addChild: messageContainer asScrollableElement.
	