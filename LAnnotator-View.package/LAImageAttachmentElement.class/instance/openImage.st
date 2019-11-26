initialization
openImage
	self assert: self attachment isImage
		description: 'not an image'.

	space := BlSpace new.
	space root addChild: self attachment asForm asElement asScalableElement.
	space	show. 
	