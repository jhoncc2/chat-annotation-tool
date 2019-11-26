as yet unclassified
testGetMessagesFromTo
	| inst res |
	inst := LAJsonDataManager new.
	inst loadMessagesFrom: '/Users/jhonc/Documents/Pharo/images/Pharo 7.0 - annotation-0.2/pharo-local/iceberg/jhoncc2/chat-annotation-tool/data/la-messages-test.json'.
	
	res :=  inst getMessagesFrom: 2 to: 7.
	self assert: inst messageModels size equals: 5. 
	self assert: res size equals: 4. "5 elements"
	self assert: inst messageModels first class equals: LADiscordModel.