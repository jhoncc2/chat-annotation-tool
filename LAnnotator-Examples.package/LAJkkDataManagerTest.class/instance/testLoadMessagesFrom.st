as yet unclassified
testLoadMessagesFrom
	| inst |
	inst := LAJkkDataManager new.
	inst loadMessagesFrom: '/Users/jhonc/Workspace/[R]research/untangling/repository/jhoncc2/chat-annotation-tool/data/jkk-data-test.txt'.
	
	self assert: inst messageModels size equals: 10. 
	self assert: inst messageModels first class equals: LAJkkModel.
	