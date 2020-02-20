query
isTermination
	^ messageRelations isNotEmpty and: [messageRelations allSatisfy: [ :e | e isBefore: self ]]