initialization
thumbnail
	^ thumbnailEl ifNil: [thumbnailEl := LAUserThumbnail new thumbstring: (self messageModel username copyFrom: 2 to: self messageModel username size - 1).]	
	