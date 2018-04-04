private
popToObserverUntilEmpty
	[queue peek isNil] whileFalse: [ observer onNext: (queue next) ]