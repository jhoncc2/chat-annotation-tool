loading
addArcLinkBetween: aMElement and: bMElement
	| arc |
	"add arc"
	(aMElement isArcLinkedTo: bMElement) ifTrue: [
		^ self
	].

	arc := LABessierArcMessageConnectorElement  aMessage: aMElement bMessage: bMElement.
	(aMElement isBefore: bMElement) 
		ifTrue: [ arc startAnchor: aMElement endAnchor:bMElement ]
		ifFalse: [ arc startAnchor: bMElement endAnchor:aMElement ].
	
	aMElement elementArcs add: arc.
	bMElement elementArcs add: arc.
	
	self addChild: arc