accessing
roppedText: aRoppedText

	self textElement editor text: aRoppedText readonly.
	self textElement editor notifyChanged.
	