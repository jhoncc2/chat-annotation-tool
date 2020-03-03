instance creation
openJkkNotes: messagesfile links: linksFile
	| space dataManager controller |
	self newInstance.
	dataManager := LAJkkDataManager instance.
	dataManager filePath: messagesfile; loadMessagesIfNeeded.
	
	controller := LAMessageListController new.
	self instance controller: controller.
	controller dataProvider: dataManager;
				view: self instance.
	self instance messageClass: LAJkkElement.
	
	self instance loadMessagesFrom: 0 to: 100.
	
	space := BlSpace new.
	space extent: 1000@600.
	space root addChild: self instance.
	space show. 