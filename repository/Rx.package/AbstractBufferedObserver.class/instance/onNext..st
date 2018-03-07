observer
onNext: item
	(index rem: skip) == 0
		ifTrue: [ self createBuffer ].
	buffer isNotNil
		ifTrue: [ self processItem: item ].
	index := index + 1