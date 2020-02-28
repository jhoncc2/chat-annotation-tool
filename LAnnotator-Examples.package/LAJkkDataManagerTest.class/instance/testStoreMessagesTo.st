as yet unclassified
testStoreMessagesTo
	| inst tmpFile |
	inst := LAJkkDataManager new.
	inst loadMessagesFrom: '/Users/jhonc/Workspace/[R]research/untangling/repository/jhoncc2/chat-annotation-tool/data/jkk-data-test.txt'.
	
	inst messageModels first createRelationWith: inst messageModels second.
	"assert relation"
	self assert: inst messageModels first messageRelations first 
			equals: inst messageModels second.
	"reciprocal relation"
	self assert: inst messageModels second messageRelations first 
			equals: inst messageModels first. 


	tmpFile := FileLocator imageDirectory  / 'pharo-local/la-messages-test-modified.json'.
	inst storeLinksTo: tmpFile.
	inst loadLinksFrom: tmpFile.
	
	self assert: inst messageModels first class equals: LAJkkModel.
	"assert relation"
	self assert: inst messageModels first messageRelations first 
			equals: inst messageModels second.
	"reciprocal relation"
	self assert: inst messageModels second messageRelations first 
			equals: inst messageModels first.
			
	tmpFile delete.