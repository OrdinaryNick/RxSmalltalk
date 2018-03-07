accessing
request: count
	"Request count items from publisher"

	[ self requestIndexes: (actualIndex to: (self maxIndex: count)).
	actualIndex >= data size
		ifTrue: [ self complete ] ]
		on: Exception
		do: [ :exception | observer onError: exception ]