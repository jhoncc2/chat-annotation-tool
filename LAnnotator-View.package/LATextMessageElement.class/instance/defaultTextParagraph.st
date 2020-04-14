initialization
defaultTextParagraph
	<return: #BlTextParagraph>
	" ^ BlSingleLineTextParagraph new"
	
	| aText aLineIterator  theWords aParent aFloatIndex |

	
	theWords := OrderedCollection new.

	aText := (String loremIpsum: 2000) asRopedText fontSize: 15.
	aLineIterator := aText iterator.

	[ aLineIterator hasNext ] whileTrue: [ 
		| aLine aWordIterator aBreak |
		aLine := aLineIterator nextLine.
		aWordIterator := aLine iterator.
		aBreak := true.
		[ aWordIterator hasNext ] whileTrue: [ 
			| aWord |
			aWord := aWordIterator nextWord.
			theWords add: (BlTextElement new
				constraintsDo: [ :c |
					c horizontal fitContent.
					"c vertical matchParent."
					c vertical exact: 20.
					c flow newLine: aBreak ];
				text: aWord;
				yourself).
			aBreak := false ] ].

	aFloatIndex := (theWords size / 3) asInteger.
	
	"theWords add: floatA afterIndex: aFloatIndex."
	aFloatIndex + 2 to: theWords size do: [ :anIndex |
		| anElement |
		anElement := (theWords at: anIndex).
		"anElement text attributes: { BlTextForegroundAttribute paint: (Color red) }."
		anElement text: anElement text ].
	
	aParent := BlElement new
		layout: BlFlowLayout new horizontal alignBottomLeft;
		constraintsDo: [ :c |
			c horizontal exact: 600.
			c vertical fitContent.
			c padding: (BlInsets all: 10) ];
		relocate: 100 @ 50;
		background: Color veryVeryLightGray;
		border: (BlBorder paint: Color lightGray width: 8);
		addChildren: theWords;
		yourself.
	^ aParent.