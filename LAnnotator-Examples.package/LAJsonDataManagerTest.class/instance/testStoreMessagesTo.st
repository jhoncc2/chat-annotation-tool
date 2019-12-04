as yet unclassified
testStoreMessagesTo
	| inst readFile linkFile |
	inst := LAJkkDataManager new.
	readFile := 'pharo-local/iceberg/jhoncc2/chat-annotation-tool/data/jkk-data-test.txt'.
	inst loadMessagesFrom: FileLocator imageDirectory  / readFile.
	
	inst messageModels first createRelationWith: inst messageModels second.
	"assert relation"
	self assert: inst messageModels first messageRelations first 
			equals: inst messageModels second.
	"reciprocal relation"
	self assert: inst messageModels second messageRelations first 
			equals: inst messageModels first. 


	linkFile := 'pharo-local/iceberg/jhoncc2/chat-annotation-tool/data/jkk-data-links.txt'.
	inst storeLinksTo: FileLocator imageDirectory / linkFile. " save links "
	inst loadMessagesFrom: FileLocator imageDirectory / readFile. "read messages - empty links"
	inst loadLinksFrom: FileLocator imageDirectory / linkFile. " reload links "
	self assert: inst messageModels size equals: 10. 
	self assert: inst messageModels first class equals: LAJkkModel.
	"assert relation"
	self assert: inst messageModels first messageRelations first 
			equals: inst messageModels second.
	"reciprocal relation"
	self assert: inst messageModels second messageRelations first 
			equals: inst messageModels first.