structure
messageRoot
	| res |
	messageRoot ifNotNil: [ ^ messageRoot ].
	self messageRelations ifEmpty: [ ^ messageRoot := self ].
	
	res := self.
	visited := true. 
	self messageRelations do: [ :e |
		(res isBefore: e) 
			ifFalse: [ res := e ]
	].	
	
	res = self 
		ifTrue: [ ^ messageRoot := self ]
		ifFalse: [ ^ messageRoot := res messageRoot ]. 