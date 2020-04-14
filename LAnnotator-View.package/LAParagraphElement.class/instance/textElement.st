accessing
textElement 
	^ textElement ifNil: [ 
		textElement :=  BrEditorElement new.
		textElement editor: (BrTextEditor new when: BrTextEditorCursorMovedEvent do: [self onCursorMoved]; yourself).
	]