instance creation
newObserver: aObserver size: size skip: skip
	| observer |
	observer := self new.
	observer observer: aObserver.
	observer size: size.
	observer skip: skip.
	observer initialize.
	^ observer