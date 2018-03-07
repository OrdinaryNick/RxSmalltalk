transformationFunctions
testWindowSkip
	"Test buffer window with skip transformation function."

	| observable |
	observable := Observable range: 1 to: 12.
	(observable window: 2 skip: 3) subscribe: observer.  

	self assert: observer isCompleted equals: true.
	self assert: observer isError equals: false.
	self assert: observer data size equals: 4.
	self assertIterables: (observer dataAt: 1 collection) equals: {1 . 2}. 
	self assertIterables: (observer dataAt: 2 collection) equals: {4 . 5}.
	self assertIterables: (observer dataAt: 3 collection) equals: {7 . 8}.
	self assertIterables: (observer dataAt: 4 collection) equals: {10 . 11}