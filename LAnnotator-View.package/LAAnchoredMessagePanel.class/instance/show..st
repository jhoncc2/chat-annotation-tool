visibility
show: aMessage
	| view |
	isVisible := true.
	self removeChildren.
	view := (LAJkkParlayMessageElementNoEvents newWithModel: aMessage messageModel controller: self app controller).
	view onStrongSelected.
	"view makeUnselectable."
	view index: aMessage messageModel index.
	self addChild: view.
	self addChild: jumpButton.
	self height: aMessage height.