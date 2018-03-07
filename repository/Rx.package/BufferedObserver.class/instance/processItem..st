protected
processItem: item
	buffer add: item.
	buffer size >= size
		ifTrue: [ observer onNext: buffer.
			buffer := nil ]