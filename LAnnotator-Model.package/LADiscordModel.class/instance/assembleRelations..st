relation-methods
assembleRelations: laMessageRelations
	self messageRelations: 
			(laMessageRelations select: [ :e | 
				self messageRelationIds anySatisfy: [ :anId | 
					e id = anId ] ])