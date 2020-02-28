testing
testIsBefore
	| dataProvider|
	dataProvider := LAJsonDataManager new loadMessagesFrom: '/Users/jhonc/Documents/Pharo/images/Pharo 7.0 - annotation-0.2/pharo-local/iceberg/jhoncc2/chat-annotation-tool/data/la-messages-test.json'. 
	
	self assert: (dataProvider messageModels first isBefore: dataProvider messageModels last) not.
	self assert: (dataProvider messageModels first isBefore: dataProvider messageModels second) not.
	self assert: (dataProvider messageModels second isBefore: dataProvider messageModels first)