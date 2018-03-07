protected
completeBuffer
	buffer isEmpty
		ifFalse: [ observer onNext: buffer ]