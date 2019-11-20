serialize
serializeMessagesAsJson
	| path |
	path := '/Users/jhonc/Workspace/chatlog/jsonData/'.
	fileNames := self channels collect: [ :c | c , '.json' ].
	fileNames doWithIndex: [ :e :i  | 
		(path , e) asFileReference writeStreamDo: [ :stream |
			|jsonString|
			jsonString := DSModelJsonMapping write: self messages as: #CollectionOfMessages mappedTo: #collectionOfMessagesMappingFor: .
			stream nextPutAll: jsonString
		]
	]
