accessing
timestamp
	^ timestamp ifNil: [ timestamp := (self time copyFrom: 2 to: self time size -1 ) asTime]
	