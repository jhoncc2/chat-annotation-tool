instance creation
openMocked
	| space dataManager controller |
	self newInstance.
	dataManager := LAMockProvider instance.
	
	controller := LAMessageListController new.
	controller view: self instance.
	self instance controller: controller.
	controller dataProvider: dataManager;
				view: self instance.
	self instance messageClass: LADiscordElement.
	
	self instance loadMessagesFrom: 0 to: 20.
	
	space := BlSpace new.
	space extent: 700@600.
	space root addChild: self instance.
	space show