accessing
request: count
	"Request count items from publisher, but emit only one item."

	((count > 0 and: completed not) and: cancelled not)
		ifTrue: [ observer onNext: data.
			self complete ]