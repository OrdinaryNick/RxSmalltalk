observer
onComplete
	done
		ifFalse: [ done := true.
			observer onComplete ]