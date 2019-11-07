anchor
startAnchor: arg1 endAnchor: arg2
	| tmp1 tmp2 tmp3 tmp4 |
	tmp2 := arg1 bounds asRectangle.
	tmp3 := arg2 bounds asRectangle.
	self isVertical
		ifTrue: [ tmp1 := tmp2 origin x @ ((tmp2 origin y + tmp2 corner y) / 2).
			tmp4 := tmp3 origin x @ ((tmp3 origin y + tmp3 corner y) / 2) ]
		ifFalse: [ tmp1 := ((tmp2 origin x + tmp2 corner x) / 2) @ tmp2 origin y.
			tmp4 := ((tmp3 origin x + tmp3 corner x) / 2) @ tmp3 origin y ].
	self
		fromAnchor: (BlAbsolutePositionAnchor position: tmp1);
		toAnchor: (BlAbsolutePositionAnchor position: tmp4)