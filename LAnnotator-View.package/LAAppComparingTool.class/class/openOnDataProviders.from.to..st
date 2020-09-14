as yet unclassified
openOnDataProviders: dataManagers from: ini to: end
	| space element |
	self newInstance.
	
	dataManagers first class = LAJkkDataManager ifTrue: [ 
		element := LAJkkMessageElementDoubleRow.
	] ifFalse: [ 
		element := LADiscordMessageElement.
	].

	self instance dataProviders: dataManagers.
	self instance messageClass: element.
	self instance initializePanels.
	self instance loadMessagesFrom: ini to: end.
	[space := BlSpace new.
	space extent: 1300@600.
	space root addChild: self instance asScrollableElement .
	space show.] forkAndWait.

	
