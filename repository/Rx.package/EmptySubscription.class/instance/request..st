accessing
request: count
	"Request count items from publisher, but emit zero items."

	((count >= 0 and: completed not) and: cancelled not)
		ifTrue: [ self complete ]