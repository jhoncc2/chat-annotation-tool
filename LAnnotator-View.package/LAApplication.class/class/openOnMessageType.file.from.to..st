instance creation
openOnMessageType: dataProviderClass file: readf from: ini to: end
	| space dataManager controller element |
	
	self newInstance.
	
	dataManager := dataProviderClass instance.
	dataManager filePath: readf; loadMessagesIfNeeded.
	
	element := dataProviderClass element.
	
	controller := LAMessageListController new.
	self instance controller: controller.
	controller dataProvider: dataManager;
				view: self instance.
	self instance messageClass: element.
	
	self instance loadMessagesFrom: ini to: end.
	
	space := BlSpace new.
	space extent: 1000@700.
	space root addChild: self instance.
	space show