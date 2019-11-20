serialize
serializeJson
	"call serializeMessagesAsJson instead"
	<Deprecated>
	| path |
	path := '/Users/jhonc/Workspace/chatlog/jsonData'.
	fileNames := self channels collect: [ :c | c , '.json' ].
	fileNames doWithIndex: [ :e :i  | 
		(path , e) asFileReference writeStreamDo: [ :stream |
			(NeoJSONWriter on: stream)
		 	    prettyPrint: true;
 				 mapInstVarsFor: DSMessage;
				 mapInstVarsFor: OrderedCollection;
  		 	  	 nextPut: (NeoJSONWriter toString: messages ) 
		]
	]
