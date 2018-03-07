instance creation
newObserver: aObserver
	"Creates empty subscription for observer."

	|subscription|
	subscription := self new.
	subscription observer: aObserver.
	subscription initialize.
	^subscription .