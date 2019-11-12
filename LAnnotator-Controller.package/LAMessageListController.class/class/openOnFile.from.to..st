instance creation
openOnFile: readf from: ini to: end
	| space dataManager |
	self newInstance.
	dataManager := LAJsonDataManager newInstance filePath: readf; loadMessagesIfNeeded; yourself.
	self instance dataProvider: dataManager;
				view: self newView.
				
	self instance loadMessagesFrom: ini to: end.
	
	space := BlSpace new.
	space extent: 600@520.
	space root addChild: instance view asScrollableElement.
	space show