instance creation
openOnFile: readf from: ini to: end
	| space dataManager controller |
	self newInstance.
	dataManager := LAJsonDataManager newInstance filePath: readf; loadMessagesIfNeeded; yourself.
	
	controller := LAMessageListController new.
	controller view: self instance.
	self instance controller: controller.
	controller dataProvider: dataManager;
				view: self instance.
	
	self instance loadMessagesFrom: ini to: end.
	
	space := BlSpace new.
	space extent: 700@600.
	space root addChild: self instance.
	space show