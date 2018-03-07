protected
processItem: item
	buffer onNext: item.
	sentItems >= size
		ifTrue: [ buffer onComplete.
			buffer := nil ]
		ifFalse: [ sentItems := sentItems + 1 ]