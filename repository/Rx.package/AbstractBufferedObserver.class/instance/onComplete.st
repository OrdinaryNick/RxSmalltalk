observer
onComplete
	buffer isNotNil
		ifTrue: [ self completeBuffer.
			buffer := nil ].
	observer onComplete