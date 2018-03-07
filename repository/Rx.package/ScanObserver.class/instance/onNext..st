observer
onNext: item
	blockValue := mapFunction value: blockValue value: item.
	observer onNext: blockValue