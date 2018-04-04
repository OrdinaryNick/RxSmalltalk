observer
onNext: item
	queue nextPut: item.
	self sentToObserver.