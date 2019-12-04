as yet unclassified
testGetMessagesFromTo
	| inst res |
	inst := LAJkkDataManager new.
	inst loadMessagesFrom: '/Users/jhonc/Documents/Pharo/images/Pharo7-annotation0.3--b/pharo-local/iceberg/jhoncc2/chat-annotation-tool/data/jkk-data-test.txt'.
	
	res :=  inst getMessagesFrom: 2 to: 7.
	self assert: inst messageModels size equals: 10. 
	self assert: res size equals: 6. "5 elements"
	self assert: inst messageModels first class equals: LAJkkModel .