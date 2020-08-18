accessing
initializePanels
	| listView  padding messageContainer|
	messageContainer := LAPanelElement new.
	messageContainer layout: BlLinearLayout horizontal.
	"messageContainer border: (BlBorder  paint: Color black)."
	messageContainer constraintsDo: [ :c |
		c vertical fitContent.
		c horizontal matchParent.
		].
	padding := 5.
	
	self controllers do: [ :c | 
		listView := LAMessageViewListElement new.
		listView messageClass: self messageClass.
		listView padding: (BlInsets all: 5).
		"listView border: (BlBorder paint: Color red)."
		listView  controller: c.
			
		"information panel actions"
		messageContainer addChild: listView.
		self listViews add: listView.
		"panelInfo look:  BrGlamorousWithHorizontalResizerLook."
	]. 
	self addChild: messageContainer asScrollableElement.
	