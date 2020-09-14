anchor
startAnchor: aBlElement endAnchor: bBlElement
	| tmp1 tmp2 tmp3 tmp4 alpha |
	
		
	aBlElement = bBlElement ifFalse: [
		tmp2 := aBlElement messageBounds .
		tmp3 := bBlElement messageBounds .
	] ifTrue: [ 
		tmp2 := bBlElement messageBounds  translateBy: 0@(-10).
		tmp3 := bBlElement messageBounds  translateBy: 0@10.
	].
	
	tmp1 := tmp2 origin x @ ((tmp2 origin y + tmp2 corner y) / 2).
	tmp4 := tmp3 origin x @ ((tmp3 origin y + tmp3 corner y) / 2).
	
	alpha := (tmp1 y - tmp4 y) abs *0.2.
	controlPoints := {tmp1. ((tmp1 x + alpha) @ tmp1 y). ((tmp4 x + alpha)@ tmp4 y ). tmp4}.
	
	self
		fromAnchor: (BlAbsolutePositionAnchor position: tmp1);
		toAnchor: (BlAbsolutePositionAnchor position: tmp4);
		in: [ :anElement | 2 to: controlPoints size - 1 do: [ :anIndex | 
			anElement viaAnchor: (BlAbsolutePositionAnchor position: ( controlPoints at: anIndex)) ] ]