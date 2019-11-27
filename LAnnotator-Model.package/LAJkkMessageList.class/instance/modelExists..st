accessing
modelExists: aMessageModel 
	^ self anySatisfy: [:e | e = aMessageModel].