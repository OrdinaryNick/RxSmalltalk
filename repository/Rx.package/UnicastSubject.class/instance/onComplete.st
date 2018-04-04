observer
onComplete
	done
		ifFalse: [ done := true.
			self sentToObserver ]