instance creation
openOnMessageType: messageClass file: readf from: ini to: end
	| space dataManager controller |
	self newInstance.
	messageClass = LADiscordModel ifTrue: [ 
		dataManager := LAJsonDataManager instance.
	] ifFalse: [ 
		dataManager := LAJkkDataManager instance.
	].
	dataManager filePath: readf; loadMessagesIfNeeded.
	
	controller := LAMessageListController new.
	controller view: self instance.
	self instance controller: controller.
	controller dataProvider: dataManager;
				view: self instance.
	self instance messageClass: messageClass.
	
	self instance loadMessagesFrom: ini to: end.
	
	space := BlSpace new.
	space extent: 1000@600.
	space root addChild: self instance.
	space show