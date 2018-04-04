observer
onError: aError
	done
		ifFalse: [ error := aError.
			done := true.
			self sentToObserver ]