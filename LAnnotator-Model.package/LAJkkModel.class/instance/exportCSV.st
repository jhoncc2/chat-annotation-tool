parsing
exportCSV 
	| separator res elems |
	separator := String tab.
	res := ''.
	elems := self messageRelations select: [ :e |
			(self isBefore: e)
	].
	elems isEmpty ifTrue: [ 
		res := 
			(self index - 1) printString , separator ,
			'-1' , separator ,
			self time , separator , 
			self username , separator ,
			self parsedContent , 
			String cr.
	] ifFalse: [ 
		elems do: [ :e |
			res := res , 
					(self index - 1) printString , separator ,
					(e index - 1) printString , separator ,
					self time , separator, 
					self username , separator ,
					self parsedContent , 
					String cr.
		].
	].
	
	^ res