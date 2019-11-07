as yet unclassified
testStoreMessagesTo
	| inst |
	inst := LAJsonDataManager new.
	inst loadMessagesFrom: '/Users/jhonc/Documents/Pharo/images/Pharo 7.0 - annotation-0.2/pharo-local/iceberg/jhoncc2/chat-annotation-tool/data/la-messages-test.json'.
	
	inst messageModels first createRelationWith: inst messageModels second.
	"assert relation"
	self assert: inst messageModels first messageRelations first 
			equals: inst messageModels second.
	"reciprocal relation"
	self assert: inst messageModels second messageRelations first 
			equals: inst messageModels first. 


	inst storeMessagesTo: '/Users/jhonc/Documents/Pharo/images/Pharo 7.0 - annotation-0.2/pharo-local/iceberg/jhoncc2/chat-annotation-tool/data/la-messages-test-modified.json'.
	
	inst loadMessagesFrom: '/Users/jhonc/Documents/Pharo/images/Pharo 7.0 - annotation-0.2/pharo-local/iceberg/jhoncc2/chat-annotation-tool/data/la-messages-test-modified.json'.
	
	self assert: inst messageModels size equals: 5. 
	self assert: inst messageModels first class equals: LAMessageModel.
	"assert relation"
	self assert: inst messageModels first messageRelations first 
			equals: inst messageModels second.
	"reciprocal relation"
	self assert: inst messageModels second messageRelations first 
			equals: inst messageModels first.