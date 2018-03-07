instance creation
newObserver: aObserver item: aItem
	"Creates subsciption with one item."
	
	|subscription|
	subscription := self new.
	subscription observer: aObserver.
	subscription data: aItem.
	subscription initialize.
	^subscription .

