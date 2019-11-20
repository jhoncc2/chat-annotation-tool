actions
fetchDataAndStoreInJson
	messages := OrderedCollection new.
	self channels do: [ :c | 
		messages addAll: (self fetchDSMessagesOnChannelName: c)
	].
"
	path := '/home/jhon/Workspace/chatlog-dataset/'.
	fileNames := self channels collect: [ :c | c , '.json' ].
	fileNames doWithIndex: [ :e :i  | 
		(path , e) asFileReference writeStreamDo: [ :stream |
			(NeoJSONWriter on: stream)
		 	    prettyPrint: true;
 		 	    mapInstVarsFor: Point;
  		 	  	 nextPut: (NeoJSONWriter toString: (messages at: i )) 
		]
	]
	

	"