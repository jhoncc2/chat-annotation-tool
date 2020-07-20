event-handling
hightlightMentions: bool
	| editor attr |
	"messagePharagraph selected: bool."
	editor := messagePharagraph textElement editor.
	
	bool 
		ifTrue: [ attr := BlTextForegroundAttribute new paint: Color green. ] 
		ifFalse: [ attr := BlTextForegroundAttribute new paint: Color black. ].
	editor text attributes: { attr }.
	"editor stylerStrategy styleTextInEditor: editor afterDo: [:e | self halt.] "
	