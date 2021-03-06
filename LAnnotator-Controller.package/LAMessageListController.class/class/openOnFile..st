instance creation
openOnFile: readf 
	| space dataManager |
	self newInstance.
	dataManager := LAJsonDataManager instance filePath: readf; loadMessages; yourself.
	self instance dataProvider: dataManager;
				view: self newView.
				
	self instance loadMessagesFrom: 1 to: 100.
	
	space := BlSpace new.
	space extent: 600@520.
	space root addChild: instance view asScrollableElement.
	space show