as yet unclassified
storeMessagesTo: aUriString
	aUriString asFileReference writeStreamDo: [ :stream |
		|jsonString|
		jsonString := LAModelJsonMapping write: self messageModels as: #LACollectionOfMessages mappedTo: #collectionOfLAMessagesMappingFor:.
		stream nextPutAll: jsonString
	]
	
	