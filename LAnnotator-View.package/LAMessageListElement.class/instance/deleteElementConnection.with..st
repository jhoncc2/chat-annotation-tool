initialization
deleteElementConnection: aMElement with: bMElement
	| arc |
	(aMElement isRelatedWithMessageElement: bMElement) ifFalse: [ ^ self ].
	
	aMElement deleteRelationWith: bMElement.
	
	"update color group"
	aMElement resetVisitingCheck. 
	aMElement messageElementRelations isEmpty 
		ifTrue: [ 
			aMElement colorConnectedMessages: aMElement unselectedColor  
		] ifFalse: [
			aMElement colorConnectedMessages: aMElement groupedColor  
		].

	bMElement resetVisitingCheck. 
	bMElement messageElementRelations isEmpty 
		ifTrue: [ 
			bMElement colorConnectedMessages: bMElement unselectedColor  
		] ifFalse: [
			bMElement colorConnectedMessages: bMElement groupedColor  
		].
		
	"add arc"
	arc := aMElement elementArcs select: [ :a | a isConnectionToMessageElement: aMElement  andMessageElement: bMElement ].
	
	arc ifNotEmpty: [
		aMElement elementArcs remove: arc first.
		aMElement index = bMElement index ifFalse: [ bMElement elementArcs remove: arc first. ]
		].
	self removeChild: arc first.
	
	
	