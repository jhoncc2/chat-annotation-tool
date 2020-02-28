initialization
registerUnion: aMessage
	aMessage uninitializeRoot.
	messageTrees := (self messageTrees collect: [ :e | 
				e uninitializeRoot.
				e messageRoot ]) asSet.
	self messageTrees add: aMessage messageRoot.  