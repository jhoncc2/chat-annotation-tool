instance creation
openMocked
	| this dp |
	this := self new.
	dp := LAMockProvider instance.
	this
		dataProvider: dp;
		view: self newView.
	this loadMessagesFrom: 0 to: 10. 
	^ this view asScrollableElement