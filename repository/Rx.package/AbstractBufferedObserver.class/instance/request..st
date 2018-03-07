observer
request: itemCount
	subscription isNotNil
		ifTrue: [ "Fixme maybe not good idea..." subscription request: itemCount * skip ]