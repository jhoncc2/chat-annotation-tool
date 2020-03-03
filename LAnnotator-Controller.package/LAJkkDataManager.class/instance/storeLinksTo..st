parsing
storeLinksTo: aUriString
	| result edges |
	edges := OrderedCollection new. 
	self messageModels doWithIndex: [:e :i |
		(e isLinkedTo: e) 	
			ifTrue: [ edges add: (i -> i) ].
		e messageRelations do: [ :rel |
			|eind|
			eind := self messageModels indexOf: rel.
			eind > i ifTrue: [  
				edges add: ((i -1) -> (eind-1)) "edges counts from 0 not 1"
			].
		]
	].
	result := ''.
	edges do: [ :e | result := result , (e key asString , String space , e value asString , ' -' , String cr )].

	aUriString asFileReference writeStreamDo: [ :stream |
		stream nextPutAll: result
	]
	
	