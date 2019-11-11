as yet unclassified
connectMessageElement: aMElement with: bMElement
	| arc v colorGroup |
	
	controller relateMessage: aMElement messageModel 
						with: bMElement messageModel.
	aMElement createRelationWithElement: bMElement.
	
	"update color group"
	v := { aMElement. bMElement } select: #visited.
	v isEmpty 
		ifTrue: [ aMElement colorConnectedMessages: LAColorPicker nextColor ]
		ifFalse: [ v first colorConnectedMessages: v first groupedColor ].
	
	
	"add arc"
	arc := LAArcConnectorElement new setVertical; yourself.
	(aMElement isBefore: bMElement) 
		ifTrue: [ arc startAnchor: aMElement endAnchor:bMElement ]
		ifFalse: [ arc startAnchor: bMElement endAnchor:aMElement ].
	
	self addChild: arc