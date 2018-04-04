accessing
request: count
	"Request count items from publisher, but only raise exception."

	cancelled not
		ifTrue: [ observer onError: data ]