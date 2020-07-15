accessing
textElement 
	| textEditor |
	^ textElement ifNil: [ 
		textElement :=  BrEditorElement new.
		textEditor := BrTextEditor new.
		textElement editor: textEditor.
	
		textEditor when: BrTextEditorCursorMovedEvent do: [ :e |
			"self onCursorMoved."
			self textElement editor hasSelection ifTrue: [
				self announceAction: (LAAnnTextSelected text: self textElement editor selectedText).
			] ifFalse: [ 
				self announceAction: (LAAnnTextSelected empty).
			]
			].
		textElement
	]