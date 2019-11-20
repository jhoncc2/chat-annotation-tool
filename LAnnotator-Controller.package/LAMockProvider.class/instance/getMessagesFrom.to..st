initialization
getMessagesFrom: iniIndex to: endIndex 
	| limit msgs |
	self assert:  iniIndex < endIndex.
	limit := (endIndex - iniIndex) / self messageModels size.
	msgs := self messageModels.
	
	1 to: limit do: [ :i | msgs := msgs , self messageModels. ].
	^ msgs