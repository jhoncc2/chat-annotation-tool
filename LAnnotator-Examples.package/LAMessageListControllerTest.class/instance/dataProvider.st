initialization
dataProvider	
	| inst |
	inst := LAJsonDataManager new.
	inst loadMessagesFrom: FileLocator imageDirectory / 'pharo-local/iceberg/jhoncc2/chat-annotation-tool/data/la-messages-test.json'.
	^ inst