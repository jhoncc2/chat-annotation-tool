tests
testCalculateTreeUnion
	| inst |
	inst := LAMessageListController new.
	inst dataProvider: self dataProvider.
	
	inst relateMessage: inst messageModels first with: inst messageModels second.
	self assert: inst messageTrees size equals: 1.
	
	inst relateMessage: (inst messageModels at: 3) with: (inst messageModels at: 4).
	self assert: inst messageTrees size equals: 2.
	
	inst relateMessage: (inst messageModels at: 3) with: (inst messageModels at: 1).
	self assert: inst messageTrees size equals: 1.
	
	
	
