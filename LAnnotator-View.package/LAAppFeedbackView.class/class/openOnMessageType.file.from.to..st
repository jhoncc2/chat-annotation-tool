instance creation
openOnMessageType: dataProviderClass file: readf from: ini to: end
	| space dataManager controller element |
	self newInstance.
	dataManager := dataProviderClass instance.
	dataManager filePath: readf; loadMessagesIfNeeded.
	
	"TODO: modify element defined here"
	dataProviderClass = LAJkkDataManager ifTrue: [ 
		element := LAJkkMessageElementVis.
	] ifFalse: [ 
		element := LADiscordMessageElement.
	].
	controller := LAMessageListController new.
	self instance controller: controller.
	controller dataProvider: dataManager;
				view: self instance.
	self instance messageClass: element.
	
	
	space := BlSpace new.
	space extent: 1000@700.
	space root addChild: self instance.
	space show.
	[
		[[space isOpened] whileFalse: [ ]] forkAndWait.
		self instance loadMessagesFrom: ini to: end.
	] fork.