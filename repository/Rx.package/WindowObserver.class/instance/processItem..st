protected
processItem: item
	buffer onNext: item.
	sentItems := sentItems + 1.
	sentItems >= size
		ifTrue: [ buffer onComplete.
			buffer := nil.
			sentItems := 0. ]