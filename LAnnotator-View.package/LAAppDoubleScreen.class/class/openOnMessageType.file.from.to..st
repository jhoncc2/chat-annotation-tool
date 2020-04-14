instance creation
openOnMessageType: dataProviderClass file: readf from: ini to: end
	| space dataManager controller elementClass |
	self newInstance.
	dataManager := dataProviderClass instance.
	dataManager filePath: readf; loadMessagesIfNeeded.
	
	elementClass := LAJkkDataManager element.
	
	controller := LAMessageListController new.
	self instance controller: controller.
	controller dataProvider: dataManager;
				view: self instance.
	self instance messageClass: elementClass.
	
	self instance loadMessagesFrom: ini to: end.
	
	space := BlSpace new.
	space extent: 1000@600.
	space root addChild: self instance.
	space show