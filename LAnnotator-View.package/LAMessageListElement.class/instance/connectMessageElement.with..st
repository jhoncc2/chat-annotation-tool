annotation-action
connectMessageElement: aMElement with: bMElement
	| arc v |
	aMElement ifNil: [ ^ self ].
	bMElement ifNil: [ ^ self ].
	(aMElement isRelatedWithMessageElement: bMElement) ifTrue: [ ^ self ].
	
	aMElement createRelationWithElement: bMElement.
	
	"update color group"
	v := { aMElement. bMElement } select: #visited.
	v isEmpty 
		ifTrue: [ aMElement colorConnectedMessages: self colorPicker nextColor ]
		ifFalse: [ 
			v first resetVisitingCheck. 
			v first colorConnectedMessages: v first groupedColor 
		].
	
	"add arc"
	arc := LAArcConnectorElement new setVertical; yourself.
	(aMElement isBefore: bMElement) 
		ifTrue: [ arc startAnchor: aMElement endAnchor: bMElement ]
		ifFalse: [ arc startAnchor: bMElement endAnchor: aMElement ].
	
	aMElement elementArcs add: arc.
	bMElement elementArcs add: arc.
	
	self addChild: arc