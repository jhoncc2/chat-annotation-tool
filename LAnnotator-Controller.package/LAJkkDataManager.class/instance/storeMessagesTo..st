parsing
storeMessagesTo: aUriString
	| result edges |
	edges := OrderedCollection new. 
	self messageModels doWithIndex: [:e :i |
		e messageRelations do: [ :rel |
			|eind|
			eind := self messageModels indexOf: rel.
			eind > i ifTrue: [  
				edges add: (i -> eind)
			].
		]
	].
	result := ''.
	edges do: [ :e | result := result , (e key asString , String space , e value asString , ' -' , String cr )].

	aUriString asFileReference writeStreamDo: [ :stream |
		stream nextPutAll: result
	]
	
	