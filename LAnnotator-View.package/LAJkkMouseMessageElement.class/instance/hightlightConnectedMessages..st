initialization
hightlightConnectedMessages: bool
	bool ifTrue: [ 
		self messageElementRelations do: [:e | 
			e strongSelected 
				ifTrue: [ e background: (e background paint color alpha: 0.9).
							e border: (BlBorder paint: (Color yellow alpha: 1) width: 4)] 
				ifFalse: [ e background: (e background paint color alpha: 0.7).  ] ].
	] ifFalse: [ 
		self messageElementRelations do: [:e | 
			e background: self groupedColor.
			e border: (BlBorder empty)
			]
	].
	