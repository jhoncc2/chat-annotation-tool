initialization
initializeEvents
	super initializeEvents.
	
	"self when: BlClickEvent do: [ :e | 
		self handleClick: e
	 ]."
	self when: BlClickEvent do: [ :e |
		(e target class allSuperclasses anySatisfy: [ :c | c == LAMessageElement  ]) ifTrue: [ 
		
			self app announcer announce: (LAAnnMessageClicked new message: e target; yourself).
			e consumed: true.
		]
	 ].