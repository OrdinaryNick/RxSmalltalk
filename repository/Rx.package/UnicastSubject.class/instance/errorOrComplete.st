private
errorOrComplete
	done
		ifTrue: [ error isNil
				ifTrue: [ observer onComplete ]
				ifFalse: [ observer onError: error ] ]