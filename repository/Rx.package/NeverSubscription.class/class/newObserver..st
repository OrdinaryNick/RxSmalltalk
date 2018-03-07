instance creation
newObserver: aObserver
	"Creates never subscription."
	
	|subscription|
	subscription := self new.
	subscription observer: aObserver.
	subscription initialize.
	^subscription.
