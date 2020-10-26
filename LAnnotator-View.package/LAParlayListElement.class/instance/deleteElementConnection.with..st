loading
deleteElementConnection: aMElement with: bMElement
	| arcs |
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

	"remove arc"
	arcs := aMElement elementArcs select: [ :a | 
		a isConnectionToMessageElement: aMElement  andMessageElement: bMElement ].

	arcs ifNotEmpty: [
		aMElement elementArcs remove: arcs first.
		aMElement index = bMElement index ifFalse: [ bMElement elementArcs remove: arcs first. ]
		].
	self removeChild: arcs first.
	
	
	