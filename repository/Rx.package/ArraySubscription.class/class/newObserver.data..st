instance creation
newObserver: aObserver data: aData
	"Create subscribtion from observer and data."
	
	|subscription|
	subscription := self new.
	subscription observer: aObserver.
	subscription data: aData.
	subscription initialize.
	^subscription .