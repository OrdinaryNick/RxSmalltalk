accessing
request: count
	"Request count items from publisher"

	[ self requestIndexes: (actualIndex to: (self maxIndex: count)).
	observer onComplete ]
		on: Exception
		do: [ :exception | observer onError: exception ]