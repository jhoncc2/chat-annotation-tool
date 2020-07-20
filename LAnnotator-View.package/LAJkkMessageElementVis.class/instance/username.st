initialization
username	
	^ usernameElement ifNil: [ usernameElement := LALabelElement new text: self messageModel username. ] 