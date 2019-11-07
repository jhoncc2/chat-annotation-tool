accessing
textElement 
	^ textElement ifNil: [ 
		textElement :=  BrEditorElement new.
		textElement editor: BrTextEditor new.
	]