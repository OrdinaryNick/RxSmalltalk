instance creation
newObserver: aObserver error: error
	"Creates subsciption with one item."
	
	|subscription|
	subscription := self new.
	subscription observer: aObserver.
	subscription data: error.
	subscription initialize.
	^subscription .
