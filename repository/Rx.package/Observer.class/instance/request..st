observer
request: count
	"Request count of items from subscription."

	subscription isNil ifFalse: [ subscription request: count ]