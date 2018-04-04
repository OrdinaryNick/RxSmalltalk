observable
subscribe: aObserver
	observer isNil
		ifTrue: [ observer := aObserver.
			"observer onSubscribe: disposable. FIXME Add disposables"
			self sentToObserver ]
		ifFalse: [ "FIXME Error should be thrown" ]