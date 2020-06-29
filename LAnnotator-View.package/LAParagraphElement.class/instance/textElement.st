accessing
textElement 
	^ textElement ifNil: [ 
		textElement :=  BrEditorElement new.
		textElement editor: (BrTextEditor new when: BrTextEditorCursorMovedEvent do: [ :e |
			"self onCursorMoved."
			self textElement editor hasSelection ifTrue: [
				self announceAction: (LAAnnTextSelected text: self textElement editor selectedText).
			] ifFalse: [ 
				self announceAction: (LAAnnTextSelected empty).
			]
			]; 
		yourself).
	]