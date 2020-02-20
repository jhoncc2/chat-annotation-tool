instance creation
openOnMessageType: dataProviderClass file: readf from: ini to: end
	| space dataManager controller element |
	self newInstance.
	dataManager := dataProviderClass instance.
	dataManager filePath: readf; loadMessagesIfNeeded.
	
	dataProviderClass = LAJkkDataManager ifTrue: [ 
		element := LAJkkElement.
	] ifFalse: [ 
		element := LADiscordElement.
	].
	
	controller := LAMessageListController new.
	self instance controller: controller.
	controller dataProvider: dataManager;
				view: self instance.
	self instance messageClass: element.
	
	self instance loadMessagesFrom: ini to: end.
	
	space := BlSpace new.
	space extent: 1000@600.
	space root addChild: self instance.
	space show