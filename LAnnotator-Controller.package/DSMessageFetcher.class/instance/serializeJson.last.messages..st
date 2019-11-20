serialize
serializeJson: fileName last: numOfMessages messages: msgs 
	<Deprecated>
	| start list |
	start := msgs size - numOfMessages.
	list := msgs copyFrom: start to: msgs size.

	(self outputPath , fileName) asFileReference writeStreamDo: [ :stream |
			(NeoJSONWriter on: stream)
		 	    prettyPrint: true;
				 mapInstVarsFor: DSAttachment;
 				 mapInstVarsFor: DSMessage;
				 mapInstVarsFor: OrderedCollection;
  		 	  	 nextPut: (NeoJSONWriter toString: list ) 
		]
	