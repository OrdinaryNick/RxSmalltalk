private
sentToObserver
	observer isNotNil
		ifTrue: [ self popToObserverUntilEmpty.
			self errorOrComplete ]