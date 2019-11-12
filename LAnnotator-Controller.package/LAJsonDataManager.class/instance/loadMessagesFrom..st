as yet unclassified
loadMessagesFrom: aUriString
	self messageModels: (LAModelJsonMapping 
			read: #LACollectionOfMessages 
			withMapping: #collectionOfLAMessagesMappingFor:
			on: aUriString asFileReference readStream).
	"after loading relations"	
	self messageModels do: [ :e | e assembleRelations: self messageModels ].
	"self messageModels: self messageModels reversed."