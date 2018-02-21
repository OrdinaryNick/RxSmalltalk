observable
subscribe: observer
	"Subscribe observer to observable by subscription."

	observer onSubscribe: (ArraySubscription newObserver: observer data: collection)