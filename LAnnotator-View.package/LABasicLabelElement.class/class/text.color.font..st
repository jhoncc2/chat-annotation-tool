accessing
text: aText color: c font: f
	| inst |
	inst := self new.
	inst text: aText.
	inst look: (BrGlamorousLabelLook new foreground: c contrastingBlackAndWhiteColor).
	inst background: c. 
	inst look fontSize: f.
	^ inst