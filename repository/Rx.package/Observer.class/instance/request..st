observer
request: count
	"Request count of items from subscription."

	subscription isNotNil ifTrue: [ subscription request: count ]