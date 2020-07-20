hightlihgt
hightlightMentions: bool
	| aps ranges |
	bool ifFalse: [ 
		messagePharagraph text: self messageModel parsedContent.
		self messageModel messageMentions do: [ :e |
			e messageElement ifNotNil: [ 
				e messageElement unhightlightUsername. 
			] 
		].
		^ self.
	]. 
	
	"messagePharagraph selected: bool."
	aps := (self controller dataProvider chatParticipants 
		collect: [:e | self messageModel parsedContent allRangesOfSubstring: e ]).
	aps := aps reject: #isEmpty.
	ranges := OrderedCollection empty. 
	aps do: [ :e | ranges addAll: e asOrderedCollection ].
	messagePharagraph text: self messageModel parsedContent hightlightRanges: ranges.
	
	"trigger notification"
	self messageModel messageMentions do: [ :e |
		e messageElement ifNotNil: [ 
			e messageElement hightlightUsername. 
		] 
	]
	"self announceAction: 
		(LAAnnMentionFound mentions: (ranges collect: 
			[:e | self messageModel parsedContent copyFrom: e first to: e last. ]))"
	