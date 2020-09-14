initialization
initializeShape
	self border: (BlBorder builder paint: Color gray; width: 2; build);
		fromAnchor: (BlAbsolutePositionAnchor position: self controlPoints first);
		toAnchor: (BlAbsolutePositionAnchor position: self controlPoints fourth);
		in: [ :anElement | 2 to: self controlPoints size - 1 do: [ :anIndex | 
				anElement viaAnchor: (BlAbsolutePositionAnchor position: ( self controlPoints at: anIndex)) ] ]