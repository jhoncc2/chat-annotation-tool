initialization
createUntanglingContinuousAnnotation
	| cont |
	cont := LALayoutBoxElement horizontal.
	
	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LABasicLabelElement text: '[C]') ; 
							yourself).
							
	cont addChild: (LALayoutBoxElement horizontal 
							addChild: (LABasicLabelElement text: 'Continuous annotation') ; 
							yourself).
	
	self addChild: cont