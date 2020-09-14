initialization
hightlightConnectedMessages
	self messageElementRelations do: [:e | 
		e background: (e background paint color alpha: 0.5).].