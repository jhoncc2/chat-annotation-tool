accessing
text: aString hightlightRanges: ranges 
	messageRopedText := (BlRopedText string: aString asString).
	
	ranges do: [ :e | 
		(messageRopedText from: e first to: e last) attributes: {   
		BlTextBackgroundAttribute new paint: 
			((LAUserThumbnail colorFor: (aString copyFrom: e first to: e last)) alpha: 0.9).
		"BlTextUnderlineAttribute new paint: Color black."
		"BrTextHoverStylableAttribute new 
			attribute: (BlTextBackgroundAttribute new paint: Color blue)."
		}.
	].
	
	self roppedText: messageRopedText 
	