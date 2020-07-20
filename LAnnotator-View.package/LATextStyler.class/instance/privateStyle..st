private
privateStyle: aText 
	<return: #BlText>
	"aText = '!details' ifTrue: [ self halt. ]."
	"self selectableElement ifNil: [ ^ aText ]."
	
	self selectableElement selected ifTrue: [
		aText background: Color blue.
	] ifFalse: [
		aText background: Color green.
	].
	^ aText