observer
onSubscribe: aSubscription
	"Invoked after calling subscribe to observable."

	subscription := aSubscription.
	self request: 100000. "FIXME Type smallinteger max values."