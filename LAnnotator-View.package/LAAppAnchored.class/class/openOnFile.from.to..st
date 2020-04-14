instance creation
openOnFile: readf from: ini to: end
	| space dataManager controller |
	self newInstance.
	dataManager := LAJsonDataManager instance filePath: readf; loadMessagesIfNeeded; yourself.
	
	controller := LAMessageListController new.
	controller view: self instance.
	self instance controller: controller.
	controller dataProvider: dataManager;
				view: self instance.
	self instance messageClass: LADiscordElement.
	
	[space := BlSpace new.
	space extent: 1000@600.
	space root addChild: self instance.
	space show] forkAndWait.

	self instance loadMessagesFrom: ini to: end.
	