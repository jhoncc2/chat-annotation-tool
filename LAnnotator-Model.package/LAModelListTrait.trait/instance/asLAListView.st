structure
asLAListView
	| list |
	list := LAMessageListElement new.
	list messageClass: self first elementClass. 
	list loadMessages: self.
	^ list.