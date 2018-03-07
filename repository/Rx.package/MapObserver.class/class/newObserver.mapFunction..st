instance creation
newObserver: aObserver mapFunction: block
	| observer |
	observer := self new.
	observer observer: aObserver.
	observer mapFunction: block.
	observer initialize.
	^ observer