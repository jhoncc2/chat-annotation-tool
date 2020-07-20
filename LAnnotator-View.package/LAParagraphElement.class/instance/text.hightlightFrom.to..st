accessing
text: aString hightlightFrom: ini to: end
	messageRopedText := (BlRopedText string: aString asString).
	
	(messageRopedText from: ini to: end) attributes: {   
		BlTextUnderlineAttribute new paint: Color black.
		"BrTextHoverStylableAttribute new 
			attribute: (BlTextBackgroundAttribute new paint: Color blue)."
		}.
	self roppedText: messageRopedText 
	