testing
testIsBefore
	| dataProvider|
	dataProvider := LAJsonDataManager new loadMessagesFrom: FileLocator imageDirectory / 'pharo-local/iceberg/jhoncc2/chat-annotation-tool/data/la-messages-test.json'. 
	
	self assert: (dataProvider messageModels first isBefore: dataProvider messageModels last).
	self assert: (dataProvider messageModels first isBefore: dataProvider messageModels second).
	self assert: (dataProvider messageModels second isBefore: dataProvider messageModels first) not