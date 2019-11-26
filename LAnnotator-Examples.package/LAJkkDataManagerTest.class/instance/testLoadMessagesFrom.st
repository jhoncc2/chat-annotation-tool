as yet unclassified
testLoadMessagesFrom
	| inst |
	inst := LAJsonDataManager new.
	inst loadMessagesFrom: '/Users/jhonc/Documents/Pharo/images/Pharo 7.0 - annotation-0.2/pharo-local/iceberg/jhoncc2/chat-annotation-tool/data/la-messages-test.json'.
	
	self assert: inst messageModels size equals: 5. 
	self assert: inst messageModels first class equals: LADiscordModel.
	