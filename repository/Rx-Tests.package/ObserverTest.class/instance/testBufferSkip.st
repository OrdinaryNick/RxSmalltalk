transformationFunctions
testBufferSkip
	"Test buffer with skip transformation function."

	| observable |
	observable := Observable range: 1 to: 12.
	observable := (observable buffer: 2 skip: 3).
	observable subscribe: observer.  

	self assert: observer isCompleted equals: true.
	self assert: observer isError equals: false.
	self assert: observer data size equals: 4.
	self assertIterables: (observer dataAt: 1) equals: {1 . 2}.
	self assertIterables: (observer dataAt: 2) equals: {4 . 5}.
	self assertIterables: (observer dataAt: 3) equals: {7 . 8}.
	self assertIterables: (observer dataAt: 4) equals: {10 . 11}