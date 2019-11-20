annotation-action
connectMessageElement: aMElement with: bMElement allowArcs: arckBool
	"the method is developed as a workaround for untangling annotation of saved data"
	| arc v |
	aMElement ifNil: [ ^ self ].
	bMElement ifNil: [ ^ self ].
	(aMElement isRelatedWithMessageElement: bMElement) ifTrue: [ ^ self ].
	
	aMElement createRelationWithElement: bMElement.
	
	"update color group"
	v := { aMElement. bMElement } select: #visited.
	v isEmpty 
		ifTrue: [ aMElement colorConnectedMessages: LAColorPicker nextColor ]
		ifFalse: [ 
			v first resetVisitingCheck. 
			v first colorConnectedMessages: v first groupedColor 
		].
	
	arckBool ifFalse: [ ^self ].
	 
	"add arc"
	arc := LAArcConnectorElement new setVertical; yourself.
	(aMElement isBefore: bMElement) 
		ifTrue: [ arc startAnchor: aMElement endAnchor:bMElement ]
		ifFalse: [ arc startAnchor: bMElement endAnchor:aMElement ].
	
	aMElement elementArcs add: arc.
	bMElement elementArcs add: arc.
	
	self addChild: arc