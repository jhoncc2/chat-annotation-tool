as yet unclassified
loadMessagesFrom: aUriString
	
	DSModelJsonMapping 
			read: #CollectionOfMessages 
			withMapping: #collectionOfMessagesMappingFor:
			on: aUriString asFileReference readStream
	
	