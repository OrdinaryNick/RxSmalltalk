observer
onError: error
	done
		ifFalse: [ done := true.
			observer onError: error ]