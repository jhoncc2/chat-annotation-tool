instance creation
openOnFile: readf 
	| space dataManager |
	self newInstance.
	dataManager := LAJsonDataManager new filePath: readf; loadMessages; yourself.
	self instance dataProvider: dataManager;
				view: self newView.
	
	space := BlSpace new.
	space extent: 600@520.
	space root addChild: instance view asScrollableElement.
	space show